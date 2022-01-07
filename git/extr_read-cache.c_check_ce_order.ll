; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_check_ce_order.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_check_ce_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@verify_ce_order = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unordered stage entries in index\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"multiple stage entries for merged file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unordered stage entries for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*)* @check_ce_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ce_order(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %7 = load i32, i32* @verify_ce_order, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %75

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %72, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.index_state*, %struct.index_state** %2, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %11
  %18 = load %struct.index_state*, %struct.index_state** %2, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 1
  %20 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %20, i64 %23
  %25 = load %struct.cache_entry*, %struct.cache_entry** %24, align 8
  store %struct.cache_entry* %25, %struct.cache_entry** %4, align 8
  %26 = load %struct.index_state*, %struct.index_state** %2, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 1
  %28 = load %struct.cache_entry**, %struct.cache_entry*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %28, i64 %30
  %32 = load %struct.cache_entry*, %struct.cache_entry** %31, align 8
  store %struct.cache_entry* %32, %struct.cache_entry** %5, align 8
  %33 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %34 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcmp(i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 0, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 (i32, ...) @die(i32 %43)
  br label %45

45:                                               ; preds = %42, %17
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %45
  %49 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %50 = call i64 @ce_stage(%struct.cache_entry* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, ...) @die(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %60 = call i64 @ce_stage(%struct.cache_entry* %59)
  %61 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %62 = call i64 @ce_stage(%struct.cache_entry* %61)
  %63 = icmp sgt i64 %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %67 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, ...) @die(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %45
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %11

75:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
