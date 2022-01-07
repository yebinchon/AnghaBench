; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_lookup.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.entry**, %struct.TYPE_6__* }
%struct.entry = type { %struct.TYPE_7__, %struct.entry* }

@HASHSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @lookup(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load i32, i32* @HASHSIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = and i64 %9, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_6__* %15)
  br label %17

17:                                               ; preds = %44, %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.entry**, %struct.entry*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.entry*, %struct.entry** %20, i64 %22
  %24 = load %struct.entry*, %struct.entry** %23, align 8
  store %struct.entry* %24, %struct.entry** %6, align 8
  br label %25

25:                                               ; preds = %39, %17
  %26 = load %struct.entry*, %struct.entry** %6, align 8
  %27 = icmp ne %struct.entry* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.entry*, %struct.entry** %6, align 8
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.entry*, %struct.entry** %6, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 0
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %3, align 8
  br label %50

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.entry*, %struct.entry** %6, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %40, i32 0, i32 1
  %42 = load %struct.entry*, %struct.entry** %41, align 8
  store %struct.entry* %42, %struct.entry** %6, align 8
  br label %25

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %5, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %17, label %49

49:                                               ; preds = %44
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %51
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
