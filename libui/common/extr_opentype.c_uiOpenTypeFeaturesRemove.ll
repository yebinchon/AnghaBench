; ModuleID = '/home/carl/AnghaBench/libui/common/extr_opentype.c_uiOpenTypeFeaturesRemove.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_opentype.c_uiOpenTypeFeaturesRemove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.feature* }
%struct.feature = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiOpenTypeFeaturesRemove(%struct.TYPE_4__* %0, i8 signext %1, i8 signext %2, i8 signext %3, i8 signext %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.feature*, align 8
  %12 = alloca %struct.feature, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.feature, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %16 = load i8, i8* %7, align 1
  %17 = load i8, i8* %8, align 1
  %18 = load i8, i8* %9, align 1
  %19 = load i8, i8* %10, align 1
  %20 = call i32 @mkkey(i8 signext %16, i8 signext %17, i8 signext %18, i8 signext %19)
  %21 = getelementptr inbounds %struct.feature, %struct.feature* %15, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.feature* %12 to i8*
  %23 = bitcast %struct.feature* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = call i64 @find(%struct.feature* %12, %struct.TYPE_4__* %24)
  %26 = inttoptr i64 %25 to %struct.feature*
  store %struct.feature* %26, %struct.feature** %11, align 8
  %27 = load %struct.feature*, %struct.feature** %11, align 8
  %28 = icmp eq %struct.feature* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %57

30:                                               ; preds = %5
  %31 = load %struct.feature*, %struct.feature** %11, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.feature*, %struct.feature** %33, align 8
  %35 = ptrtoint %struct.feature* %31 to i64
  %36 = ptrtoint %struct.feature* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  %47 = load %struct.feature*, %struct.feature** %11, align 8
  %48 = getelementptr inbounds %struct.feature, %struct.feature* %47, i64 1
  %49 = load %struct.feature*, %struct.feature** %11, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @bytecount(i64 %50)
  %52 = call i32 @memmove(%struct.feature* %48, %struct.feature* %49, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @mkkey(i8 signext, i8 signext, i8 signext, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @find(%struct.feature*, %struct.TYPE_4__*) #1

declare dso_local i32 @memmove(%struct.feature*, %struct.feature*, i32) #1

declare dso_local i32 @bytecount(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
