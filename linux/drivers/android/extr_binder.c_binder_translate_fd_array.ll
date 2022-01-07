; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_fd_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_fd_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_fd_array_object = type { i32, i64 }
%struct.binder_buffer_object = type { i64, i64 }
%struct.binder_thread = type { i32, %struct.binder_proc* }
%struct.binder_proc = type { i32, i32 }
%struct.binder_transaction = type { %struct.TYPE_2__*, %struct.binder_proc* }
%struct.TYPE_2__ = type { i64 }

@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%d:%d got transaction with invalid number of fds (%lld)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%d:%d not enough space to store %lld fds in buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%d:%d parent offset not aligned correctly.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_fd_array_object*, %struct.binder_buffer_object*, %struct.binder_transaction*, %struct.binder_thread*, %struct.binder_transaction*)* @binder_translate_fd_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_translate_fd_array(%struct.binder_fd_array_object* %0, %struct.binder_buffer_object* %1, %struct.binder_transaction* %2, %struct.binder_thread* %3, %struct.binder_transaction* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.binder_fd_array_object*, align 8
  %8 = alloca %struct.binder_buffer_object*, align 8
  %9 = alloca %struct.binder_transaction*, align 8
  %10 = alloca %struct.binder_thread*, align 8
  %11 = alloca %struct.binder_transaction*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.binder_proc*, align 8
  %16 = alloca %struct.binder_proc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.binder_fd_array_object* %0, %struct.binder_fd_array_object** %7, align 8
  store %struct.binder_buffer_object* %1, %struct.binder_buffer_object** %8, align 8
  store %struct.binder_transaction* %2, %struct.binder_transaction** %9, align 8
  store %struct.binder_thread* %3, %struct.binder_thread** %10, align 8
  store %struct.binder_transaction* %4, %struct.binder_transaction** %11, align 8
  %20 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %21 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %20, i32 0, i32 1
  %22 = load %struct.binder_proc*, %struct.binder_proc** %21, align 8
  store %struct.binder_proc* %22, %struct.binder_proc** %15, align 8
  %23 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %24 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %23, i32 0, i32 1
  %25 = load %struct.binder_proc*, %struct.binder_proc** %24, align 8
  store %struct.binder_proc* %25, %struct.binder_proc** %16, align 8
  %26 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %7, align 8
  %27 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  store i64 %30, i64* %13, align 8
  %31 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %7, align 8
  %32 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @SIZE_MAX, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 4
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %5
  %40 = load %struct.binder_proc*, %struct.binder_proc** %15, align 8
  %41 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %44 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %7, align 8
  %47 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, i32, ...) @binder_user_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %147

52:                                               ; preds = %5
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %8, align 8
  %55 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %52
  %59 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %7, align 8
  %60 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %8, align 8
  %63 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sub nsw i64 %64, %65
  %67 = icmp sgt i64 %61, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %58, %52
  %69 = load %struct.binder_proc*, %struct.binder_proc** %15, align 8
  %70 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %73 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %7, align 8
  %76 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i32, i32, ...) @binder_user_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74, i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %147

81:                                               ; preds = %58
  %82 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %8, align 8
  %83 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %86 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %84, %89
  %91 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %7, align 8
  %92 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @IS_ALIGNED(i64 %95, i32 4)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %81
  %99 = load %struct.binder_proc*, %struct.binder_proc** %15, align 8
  %100 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %103 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i32, i32, ...) @binder_user_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %147

108:                                              ; preds = %81
  store i64 0, i64* %12, align 8
  br label %109

109:                                              ; preds = %143, %108
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %7, align 8
  %112 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %110, %114
  br i1 %115, label %116, label %146

116:                                              ; preds = %109
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* %12, align 8
  %119 = mul i64 %118, 4
  %120 = add i64 %117, %119
  store i64 %120, i64* %19, align 8
  %121 = load %struct.binder_proc*, %struct.binder_proc** %16, align 8
  %122 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %121, i32 0, i32 0
  %123 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %124 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i64, i64* %19, align 8
  %127 = call i32 @binder_alloc_copy_from_buffer(i32* %122, i32* %17, %struct.TYPE_2__* %125, i64 %126, i32 4)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %17, align 4
  %132 = load i64, i64* %19, align 8
  %133 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %134 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %135 = load %struct.binder_transaction*, %struct.binder_transaction** %11, align 8
  %136 = call i32 @binder_translate_fd(i32 %131, i64 %132, %struct.binder_transaction* %133, %struct.binder_thread* %134, %struct.binder_transaction* %135)
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %130, %116
  %138 = load i32, i32* %18, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  store i32 %141, i32* %6, align 4
  br label %147

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %12, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %12, align 8
  br label %109

146:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %140, %98, %68, %39
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @binder_user_error(i8*, i32, i32, ...) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @binder_alloc_copy_from_buffer(i32*, i32*, %struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @binder_translate_fd(i32, i64, %struct.binder_transaction*, %struct.binder_thread*, %struct.binder_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
