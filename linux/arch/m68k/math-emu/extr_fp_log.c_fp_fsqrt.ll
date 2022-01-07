; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_log.c_fp_fsqrt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_log.c_fp_fsqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, i64 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fsqrt\0A\00", align 1
@fp_one = common dso_local global %struct.fp_ext zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fsqrt(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca %struct.fp_ext, align 8
  %7 = alloca %struct.fp_ext, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %10 = load i32, i32* @PINSTR, align 4
  %11 = call i32 @dprint(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %13 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %14 = call i32 @fp_monadic_check(%struct.fp_ext* %12, %struct.fp_ext* %13)
  %15 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %16 = call i64 @IS_ZERO(%struct.fp_ext* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %19, %struct.fp_ext** %3, align 8
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %22 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %27 = call i32 @fp_set_nan(%struct.fp_ext* %26)
  %28 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %28, %struct.fp_ext** %3, align 8
  br label %83

29:                                               ; preds = %20
  %30 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %31 = call i64 @IS_INF(%struct.fp_ext* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %34, %struct.fp_ext** %3, align 8
  br label %83

35:                                               ; preds = %29
  %36 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %37 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %40 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %39, i32 0, i32 0
  store i32 16383, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %46 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %51 = call i32 @fp_copy_ext(%struct.fp_ext* %7, %struct.fp_ext* %50)
  %52 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %53 = call i32 @fp_fadd(%struct.fp_ext* %52, %struct.fp_ext* @fp_one)
  %54 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %55 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %71, %49
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 9
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = call i32 @fp_copy_ext(%struct.fp_ext* %6, %struct.fp_ext* %7)
  %63 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %64 = call i32 @fp_fdiv(%struct.fp_ext* %6, %struct.fp_ext* %63)
  %65 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %66 = call i32 @fp_fadd(%struct.fp_ext* %65, %struct.fp_ext* %6)
  %67 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %68 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 16383
  %77 = sdiv i32 %76, 2
  %78 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %79 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %82, %struct.fp_ext** %3, align 8
  br label %83

83:                                               ; preds = %74, %33, %25, %18
  %84 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %84
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_monadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i32 @fp_copy_ext(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_fadd(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_fdiv(%struct.fp_ext*, %struct.fp_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
