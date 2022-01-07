; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_get_uniq_visitor_key.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_get_uniq_visitor_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @get_uniq_visitor_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_uniq_visitor_key(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @xstrdup(i32 %10)
  %12 = call i8* @deblank(i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %25, %26
  %28 = add i64 %27, 3
  %29 = call i8* @xcalloc(i64 %28, i32 1)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @memcpy(i8* %30, i8* %33, i64 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 124, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  %48 = call i32 @memcpy(i8* %42, i8* %45, i64 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %50, %51
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  store i8 124, i8* %54, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8*, i8** %3, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @memcpy(i8* %60, i8* %61, i64 %63)
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i8* @deblank(i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xcalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
