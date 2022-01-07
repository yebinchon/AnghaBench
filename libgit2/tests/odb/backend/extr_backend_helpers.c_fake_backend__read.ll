; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_backend_helpers.c_fake_backend__read.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_backend_helpers.c_fake_backend__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, i32*, i32*)* @fake_backend__read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_backend__read(i8** %0, i64* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %24 = call i32 @search_object(%struct.TYPE_5__** %12, %struct.TYPE_6__* %21, i32* %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %41

28:                                               ; preds = %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strlen(i32 %31)
  %33 = load i64*, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @git__strdup(i32 %36)
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %28, %26
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @search_object(%struct.TYPE_5__**, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @git__strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
