; ModuleID = '/home/carl/AnghaBench/libui/common/extr_opentype.c_uiOpenTypeFeaturesGet.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_opentype.c_uiOpenTypeFeaturesGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feature = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uiOpenTypeFeaturesGet(i32* %0, i8 signext %1, i8 signext %2, i8 signext %3, i8 signext %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca %struct.feature*, align 8
  %15 = alloca %struct.feature, align 4
  %16 = alloca %struct.feature, align 4
  store i32* %0, i32** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i8 %4, i8* %12, align 1
  store i32* %5, i32** %13, align 8
  %17 = load i8, i8* %9, align 1
  %18 = load i8, i8* %10, align 1
  %19 = load i8, i8* %11, align 1
  %20 = load i8, i8* %12, align 1
  %21 = call i32 @mkkey(i8 signext %17, i8 signext %18, i8 signext %19, i8 signext %20)
  %22 = getelementptr inbounds %struct.feature, %struct.feature* %16, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.feature* %15 to i8*
  %24 = bitcast %struct.feature* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @find(%struct.feature* %15, i32* %25)
  %27 = inttoptr i64 %26 to %struct.feature*
  store %struct.feature* %27, %struct.feature** %14, align 8
  %28 = load %struct.feature*, %struct.feature** %14, align 8
  %29 = icmp eq %struct.feature* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %36

31:                                               ; preds = %6
  %32 = load %struct.feature*, %struct.feature** %14, align 8
  %33 = getelementptr inbounds %struct.feature, %struct.feature* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %13, align 8
  store i32 %34, i32* %35, align 4
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @mkkey(i8 signext, i8 signext, i8 signext, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @find(%struct.feature*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
