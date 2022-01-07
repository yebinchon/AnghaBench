; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_line_log_data_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_line_log_data_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_log_data = type { i32, %struct.line_log_data*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line_log_data* (%struct.line_log_data*, %struct.line_log_data*)* @line_log_data_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line_log_data* @line_log_data_merge(%struct.line_log_data* %0, %struct.line_log_data* %1) #0 {
  %3 = alloca %struct.line_log_data*, align 8
  %4 = alloca %struct.line_log_data*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  %6 = alloca %struct.line_log_data**, align 8
  %7 = alloca %struct.line_log_data*, align 8
  %8 = alloca %struct.line_log_data*, align 8
  %9 = alloca %struct.line_log_data*, align 8
  %10 = alloca i32, align 4
  store %struct.line_log_data* %0, %struct.line_log_data** %3, align 8
  store %struct.line_log_data* %1, %struct.line_log_data** %4, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %5, align 8
  store %struct.line_log_data** %5, %struct.line_log_data*** %6, align 8
  br label %11

11:                                               ; preds = %92, %2
  %12 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  %13 = icmp ne %struct.line_log_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %16 = icmp ne %struct.line_log_data* %15, null
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ true, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %93

19:                                               ; preds = %17
  store %struct.line_log_data* null, %struct.line_log_data** %8, align 8
  %20 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  %21 = icmp ne %struct.line_log_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  br label %36

23:                                               ; preds = %19
  %24 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %25 = icmp ne %struct.line_log_data* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 -1, i32* %10, align 4
  br label %35

27:                                               ; preds = %23
  %28 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  %29 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %32 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcmp(i32 %30, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %27, %26
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  store %struct.line_log_data* %40, %struct.line_log_data** %7, align 8
  %41 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  %42 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %41, i32 0, i32 1
  %43 = load %struct.line_log_data*, %struct.line_log_data** %42, align 8
  store %struct.line_log_data* %43, %struct.line_log_data** %3, align 8
  br label %62

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  store %struct.line_log_data* %48, %struct.line_log_data** %7, align 8
  %49 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  %50 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %49, i32 0, i32 1
  %51 = load %struct.line_log_data*, %struct.line_log_data** %50, align 8
  store %struct.line_log_data* %51, %struct.line_log_data** %3, align 8
  %52 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  store %struct.line_log_data* %52, %struct.line_log_data** %8, align 8
  %53 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %54 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %53, i32 0, i32 1
  %55 = load %struct.line_log_data*, %struct.line_log_data** %54, align 8
  store %struct.line_log_data* %55, %struct.line_log_data** %4, align 8
  br label %61

56:                                               ; preds = %44
  %57 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  store %struct.line_log_data* %57, %struct.line_log_data** %7, align 8
  %58 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %59 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %58, i32 0, i32 1
  %60 = load %struct.line_log_data*, %struct.line_log_data** %59, align 8
  store %struct.line_log_data* %60, %struct.line_log_data** %4, align 8
  br label %61

61:                                               ; preds = %56, %47
  br label %62

62:                                               ; preds = %61, %39
  %63 = call %struct.line_log_data* @xmalloc(i32 24)
  store %struct.line_log_data* %63, %struct.line_log_data** %9, align 8
  %64 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %65 = call i32 @line_log_data_init(%struct.line_log_data* %64)
  %66 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %67 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @xstrdup(i32 %68)
  %70 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %71 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %73 = load %struct.line_log_data**, %struct.line_log_data*** %6, align 8
  store %struct.line_log_data* %72, %struct.line_log_data** %73, align 8
  %74 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %75 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %74, i32 0, i32 1
  store %struct.line_log_data** %75, %struct.line_log_data*** %6, align 8
  %76 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %77 = icmp ne %struct.line_log_data* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %62
  %79 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %80 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %79, i32 0, i32 0
  %81 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %82 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %81, i32 0, i32 0
  %83 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %84 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %83, i32 0, i32 0
  %85 = call i32 @range_set_union(i32* %80, i32* %82, i32* %84)
  br label %92

86:                                               ; preds = %62
  %87 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %88 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %87, i32 0, i32 0
  %89 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %90 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %89, i32 0, i32 0
  %91 = call i32 @range_set_copy(i32* %88, i32* %90)
  br label %92

92:                                               ; preds = %86, %78
  br label %11

93:                                               ; preds = %17
  %94 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  ret %struct.line_log_data* %94
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.line_log_data* @xmalloc(i32) #1

declare dso_local i32 @line_log_data_init(%struct.line_log_data*) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @range_set_union(i32*, i32*, i32*) #1

declare dso_local i32 @range_set_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
