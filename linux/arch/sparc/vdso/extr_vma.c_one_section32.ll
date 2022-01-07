; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_one_section32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_one_section32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_elfinfo32 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vdso_elfinfo32*, i8*, i64*)* @one_section32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @one_section32(%struct.vdso_elfinfo32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vdso_elfinfo32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store %struct.vdso_elfinfo32* %0, %struct.vdso_elfinfo32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %5, align 8
  %12 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = bitcast %struct.TYPE_3__* %13 to i8*
  %15 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %5, align 8
  %16 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %14, i64 %20
  %22 = bitcast i8* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %9, align 8
  %23 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %5, align 8
  %24 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = bitcast %struct.TYPE_3__* %25 to i8*
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %5, align 8
  %29 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %26, i64 %36
  store i8* %37, i8** %8, align 8
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %84, %3
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %5, align 8
  %41 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %39, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %47, i64 %54
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %46
  %60 = load i64*, i64** %7, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %59
  %71 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %5, align 8
  %72 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = bitcast %struct.TYPE_3__* %73 to i8*
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %74, i64 %81
  store i8* %82, i8** %4, align 8
  br label %88

83:                                               ; preds = %46
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %38

87:                                               ; preds = %38
  store i8* null, i8** %4, align 8
  br label %88

88:                                               ; preds = %87, %70
  %89 = load i8*, i8** %4, align 8
  ret i8* %89
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
