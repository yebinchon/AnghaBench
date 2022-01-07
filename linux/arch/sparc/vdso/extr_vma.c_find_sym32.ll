; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_find_sym32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_find_sym32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.vdso_elfinfo32 = type { i32, i64, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.vdso_elfinfo32*, i8*)* @find_sym32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @find_sym32(%struct.vdso_elfinfo32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.vdso_elfinfo32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.vdso_elfinfo32* %0, %struct.vdso_elfinfo32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %4, align 8
  %12 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 8
  %16 = icmp ult i64 %10, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %8
  %18 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %4, align 8
  %19 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %7, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %43

29:                                               ; preds = %17
  %30 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %4, align 8
  %31 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i64 %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %3, align 8
  br label %47

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %8

46:                                               ; preds = %8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %48
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
