; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_find_sections32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vma.c_find_sections32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_image = type { i32 }
%struct.vdso_elfinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vdso_elfinfo32 }
%struct.vdso_elfinfo32 = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"VDSO32: Missing symbol sections.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdso_image*, %struct.vdso_elfinfo*)* @find_sections32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sections32(%struct.vdso_image* %0, %struct.vdso_elfinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdso_image*, align 8
  %5 = alloca %struct.vdso_elfinfo*, align 8
  %6 = alloca %struct.vdso_elfinfo32*, align 8
  store %struct.vdso_image* %0, %struct.vdso_image** %4, align 8
  store %struct.vdso_elfinfo* %1, %struct.vdso_elfinfo** %5, align 8
  %7 = load %struct.vdso_elfinfo*, %struct.vdso_elfinfo** %5, align 8
  %8 = getelementptr inbounds %struct.vdso_elfinfo, %struct.vdso_elfinfo* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.vdso_elfinfo32* %9, %struct.vdso_elfinfo32** %6, align 8
  %10 = load %struct.vdso_image*, %struct.vdso_image** %4, align 8
  %11 = getelementptr inbounds %struct.vdso_image, %struct.vdso_image* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %14 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %16 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %17 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %16, i32 0, i32 2
  %18 = call i8* @one_section32(%struct.vdso_elfinfo32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %17)
  %19 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %20 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %22 = call i8* @one_section32(%struct.vdso_elfinfo32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %23 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %24 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %26 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.vdso_elfinfo32*, %struct.vdso_elfinfo32** %6, align 8
  %31 = getelementptr inbounds %struct.vdso_elfinfo32, %struct.vdso_elfinfo32* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %2
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i8* @one_section32(%struct.vdso_elfinfo32*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
