; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_symbol.c_sym_check_deps.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_symbol.c_sym_check_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.property = type { i32 }
%struct.dep_stack = type { i32 }

@SYMBOL_CHECK = common dso_local global i32 0, align 4
@SYMBOL_CHECKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @sym_check_deps(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.dep_stack, align 4
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SYMBOL_CHECK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.symbol*, %struct.symbol** %3, align 8
  %15 = call i32 @sym_check_print_recursive(%struct.symbol* %14)
  %16 = load %struct.symbol*, %struct.symbol** %3, align 8
  store %struct.symbol* %16, %struct.symbol** %2, align 8
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.symbol*, %struct.symbol** %3, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SYMBOL_CHECKED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %72

25:                                               ; preds = %17
  %26 = load %struct.symbol*, %struct.symbol** %3, align 8
  %27 = call i64 @sym_is_choice_value(%struct.symbol* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.symbol*, %struct.symbol** %3, align 8
  %31 = call i32 @dep_stack_insert(%struct.dep_stack* %6, %struct.symbol* %30)
  %32 = load %struct.symbol*, %struct.symbol** %3, align 8
  %33 = call %struct.property* @sym_get_choice_prop(%struct.symbol* %32)
  store %struct.property* %33, %struct.property** %5, align 8
  %34 = load %struct.property*, %struct.property** %5, align 8
  %35 = call %struct.symbol* @prop_get_symbol(%struct.property* %34)
  %36 = call %struct.symbol* @sym_check_deps(%struct.symbol* %35)
  store %struct.symbol* %36, %struct.symbol** %4, align 8
  %37 = call i32 (...) @dep_stack_remove()
  br label %62

38:                                               ; preds = %25
  %39 = load %struct.symbol*, %struct.symbol** %3, align 8
  %40 = call i64 @sym_is_choice(%struct.symbol* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.symbol*, %struct.symbol** %3, align 8
  %44 = call %struct.symbol* @sym_check_choice_deps(%struct.symbol* %43)
  store %struct.symbol* %44, %struct.symbol** %4, align 8
  br label %61

45:                                               ; preds = %38
  %46 = load i32, i32* @SYMBOL_CHECK, align 4
  %47 = load i32, i32* @SYMBOL_CHECKED, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.symbol*, %struct.symbol** %3, align 8
  %50 = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.symbol*, %struct.symbol** %3, align 8
  %54 = call %struct.symbol* @sym_check_sym_deps(%struct.symbol* %53)
  store %struct.symbol* %54, %struct.symbol** %4, align 8
  %55 = load i32, i32* @SYMBOL_CHECK, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.symbol*, %struct.symbol** %3, align 8
  %58 = getelementptr inbounds %struct.symbol, %struct.symbol* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %45, %42
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.symbol*, %struct.symbol** %4, align 8
  %64 = icmp ne %struct.symbol* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.symbol*, %struct.symbol** %4, align 8
  %67 = load %struct.symbol*, %struct.symbol** %3, align 8
  %68 = icmp eq %struct.symbol* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %70

70:                                               ; preds = %69, %65, %62
  %71 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %71, %struct.symbol** %2, align 8
  br label %72

72:                                               ; preds = %70, %24, %13
  %73 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %73
}

declare dso_local i32 @sym_check_print_recursive(%struct.symbol*) #1

declare dso_local i64 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local i32 @dep_stack_insert(%struct.dep_stack*, %struct.symbol*) #1

declare dso_local %struct.property* @sym_get_choice_prop(%struct.symbol*) #1

declare dso_local %struct.symbol* @prop_get_symbol(%struct.property*) #1

declare dso_local i32 @dep_stack_remove(...) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local %struct.symbol* @sym_check_choice_deps(%struct.symbol*) #1

declare dso_local %struct.symbol* @sym_check_sym_deps(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
