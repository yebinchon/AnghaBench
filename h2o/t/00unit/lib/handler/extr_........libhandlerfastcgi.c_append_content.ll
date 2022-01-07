; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_append_content.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_append_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fcgi_generator_t = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_fcgi_generator_t*, i8*, i64)* @append_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_content(%struct.st_fcgi_generator_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_fcgi_generator_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.st_fcgi_generator_t* %0, %struct.st_fcgi_generator_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SIZE_MAX, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %16 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %22 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %59

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %31 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %36 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32* @h2o_buffer_try_reserve(%struct.TYPE_7__** %37, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %59

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @memcpy(i32* %47, i8* %48, i64 %49)
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %53 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %51
  store i64 %58, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %45, %44, %26
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @h2o_buffer_try_reserve(%struct.TYPE_7__**, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
