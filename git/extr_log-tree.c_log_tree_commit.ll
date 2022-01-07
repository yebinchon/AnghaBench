; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_log_tree_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_log_tree_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i8*, %struct.TYPE_2__, %struct.log_info*, i64, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.log_info = type { i32*, %struct.commit* }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_tree_commit(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.log_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.commit*, %struct.commit** %5, align 8
  %14 = getelementptr inbounds %struct.log_info, %struct.log_info* %6, i32 0, i32 1
  store %struct.commit* %13, %struct.commit** %14, align 8
  %15 = getelementptr inbounds %struct.log_info, %struct.log_info* %6, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %16, i32 0, i32 2
  store %struct.log_info* %6, %struct.log_info** %17, align 8
  %18 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %19 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %22 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %27 = load %struct.commit*, %struct.commit** %5, align 8
  %28 = call i32 @line_log_print(%struct.rev_info* %26, %struct.commit* %27)
  store i32 %28, i32* %3, align 4
  br label %115

29:                                               ; preds = %2
  %30 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %31 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %36 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %46 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %50 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %44, %39, %34, %29
  %54 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %55 = load %struct.commit*, %struct.commit** %5, align 8
  %56 = call i32 @log_tree_diff(%struct.rev_info* %54, %struct.commit* %55, %struct.log_info* %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %61 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %60, i32 0, i32 2
  %62 = load %struct.log_info*, %struct.log_info** %61, align 8
  %63 = icmp ne %struct.log_info* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %66 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.log_info, %struct.log_info* %6, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %72 = call i32 @show_log(%struct.rev_info* %71)
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %64, %59, %53
  %74 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %75 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %80 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %94 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @fprintf(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %88, %83, %78, %73
  %98 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %99 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %98, i32 0, i32 2
  store %struct.log_info* null, %struct.log_info** %99, align 8
  %100 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %101 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @maybe_flush_or_die(i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %109 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @fclose(i32 %111)
  br label %113

113:                                              ; preds = %107, %97
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %25
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @line_log_print(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @log_tree_diff(%struct.rev_info*, %struct.commit*, %struct.log_info*) #1

declare dso_local i32 @show_log(%struct.rev_info*) #1

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
