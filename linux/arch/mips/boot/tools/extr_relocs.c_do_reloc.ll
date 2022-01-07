; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_do_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_do_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@STB_WEAK = common dso_local global i32 0, align 4
@relocs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unsupported relocation type: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section*, %struct.TYPE_6__*, %struct.TYPE_5__*, i8*)* @do_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reloc(%struct.section* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.section*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.section* %0, %struct.section** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ELF_R_TYPE(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ELF_ST_BIND(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @STB_WEAK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %49

29:                                               ; preds = %23, %4
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @regex_skip_reloc(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %49

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %43 [
    i32 132, label %36
    i32 128, label %36
    i32 131, label %36
    i32 130, label %36
    i32 129, label %36
    i32 134, label %36
    i32 135, label %36
    i32 133, label %36
    i32 137, label %37
    i32 138, label %37
    i32 139, label %37
    i32 136, label %37
  ]

36:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34
  br label %48

37:                                               ; preds = %34, %34, %34, %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @add_reloc(i32* @relocs, i32 %40, i32 %41)
  br label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @rel_type(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %37, %36
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %33, %28
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32 @ELF_ST_BIND(i32) #1

declare dso_local i64 @regex_skip_reloc(i8*) #1

declare dso_local i32 @add_reloc(i32*, i32, i32) #1

declare dso_local i32 @die(i8*, i32, i32) #1

declare dso_local i32 @rel_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
