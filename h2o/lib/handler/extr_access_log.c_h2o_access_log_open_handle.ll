; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_access_log.c_h2o_access_log_open_handle.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_access_log.c_h2o_access_log_open_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [54 x i8] c"%h %l %u %t \22%r\22 %s %b \22%{Referer}i\22 \22%{User-agent}i\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@on_dispose_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @h2o_access_log_open_handle(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca [256 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %19 = call i32* @h2o_logconf_compile(i8* %16, i32 %17, i8* %18)
  store i32* %19, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %23 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %41

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @h2o_access_log_open_log(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @h2o_logconf_dispose(i32* %29)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %41

31:                                               ; preds = %24
  %32 = load i32, i32* @on_dispose_handle, align 4
  %33 = call %struct.TYPE_4__* @h2o_mem_alloc_shared(i32* null, i32 16, i32 %32)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %10, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %4, align 8
  br label %41

41:                                               ; preds = %31, %28, %21
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %42
}

declare dso_local i32* @h2o_logconf_compile(i8*, i32, i8*) #1

declare dso_local i32 @h2o_error_printf(i8*, i8*) #1

declare dso_local i32 @h2o_access_log_open_log(i8*) #1

declare dso_local i32 @h2o_logconf_dispose(i32*) #1

declare dso_local %struct.TYPE_4__* @h2o_mem_alloc_shared(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
