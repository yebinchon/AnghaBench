; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_unpack_loose_short_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_unpack_loose_short_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i8*, i64)* @unpack_loose_short_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_loose_short_header(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 32)
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = call i32 @git_inflate_init(%struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @git_inflate(%struct.TYPE_6__* %27, i32 0)
  ret i32 %28
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_inflate_init(%struct.TYPE_6__*) #1

declare dso_local i32 @git_inflate(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
