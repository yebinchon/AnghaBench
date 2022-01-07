; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_print_binder_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_print_binder_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.binder_stats = type { i32*, i32*, i32*, i32* }

@binder_command_strings = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s%s: %d\0A\00", align 1
@binder_return_strings = common dso_local global i32* null, align 8
@binder_objstat_strings = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s%s: active %d total %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*, %struct.binder_stats*)* @print_binder_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_binder_stats(%struct.seq_file* %0, i8* %1, %struct.binder_stats* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.binder_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.binder_stats* %2, %struct.binder_stats** %6, align 8
  %12 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %13 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = load i32*, i32** @binder_command_strings, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp ne i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %49, %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %24 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %21
  %29 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %30 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @atomic_read(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** @binder_command_strings, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (%struct.seq_file*, i8*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %21

52:                                               ; preds = %21
  %53 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %54 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = load i32*, i32** @binder_return_strings, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp ne i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUILD_BUG_ON(i32 %60)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %90, %52
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %65 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ARRAY_SIZE(i32* %66)
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %62
  %70 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %71 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @atomic_read(i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %69
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i32*, i32** @binder_return_strings, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (%struct.seq_file*, i8*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %81, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %69
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %62

93:                                               ; preds = %62
  %94 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %95 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @ARRAY_SIZE(i32* %96)
  %98 = load i32*, i32** @binder_objstat_strings, align 8
  %99 = call i32 @ARRAY_SIZE(i32* %98)
  %100 = icmp ne i32 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUILD_BUG_ON(i32 %101)
  %103 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %104 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @ARRAY_SIZE(i32* %105)
  %107 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %108 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @ARRAY_SIZE(i32* %109)
  %111 = icmp ne i32 %106, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @BUILD_BUG_ON(i32 %112)
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %155, %93
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %117 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @ARRAY_SIZE(i32* %118)
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %158

121:                                              ; preds = %114
  %122 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %123 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @atomic_read(i32* %127)
  store i32 %128, i32* %10, align 4
  %129 = load %struct.binder_stats*, %struct.binder_stats** %6, align 8
  %130 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @atomic_read(i32* %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %121
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138, %121
  %142 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %143 = load i8*, i8** %5, align 8
  %144 = load i32*, i32** @binder_objstat_strings, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (%struct.seq_file*, i8*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %143, i32 %148, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %141, %138
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %114

158:                                              ; preds = %114
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
