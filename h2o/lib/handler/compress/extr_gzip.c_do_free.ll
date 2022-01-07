; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_do_free.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_do_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_gzip_context_t = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__* }

@do_compress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.st_gzip_context_t*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.st_gzip_context_t*
  store %struct.st_gzip_context_t* %6, %struct.st_gzip_context_t** %3, align 8
  %7 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %8 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @do_compress, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %19, i32 0, i32 2
  %21 = call i32 @deflateEnd(i32* %20)
  br label %26

22:                                               ; preds = %11
  %23 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %23, i32 0, i32 2
  %25 = call i32 @inflateEnd(i32* %24)
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %1
  store i64 0, i64* %4, align 8
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %37 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @free(%struct.TYPE_6__* %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %50 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @free(%struct.TYPE_6__* %52)
  %54 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %3, align 8
  %55 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call i32 @free(%struct.TYPE_6__* %57)
  ret void
}

declare dso_local i32 @deflateEnd(i32*) #1

declare dso_local i32 @inflateEnd(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
