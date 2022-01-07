; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_do_reloc32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_do_reloc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@SHN_ABS = common dso_local global i64 0, align 8
@S_REL = common dso_local global i32 0, align 4
@S_ABS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid absolute %s relocation: %s\0A\00", align 1
@relocs32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported relocation type: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section*, %struct.TYPE_6__*, %struct.TYPE_5__*, i8*)* @do_reloc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reloc32(%struct.section* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i8* %3) #0 {
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.section* %0, %struct.section** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ELF32_R_TYPE(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SHN_ABS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* @S_REL, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @is_reloc(i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i1 [ false, %4 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %50 [
    i32 131, label %30
    i32 129, label %30
    i32 130, label %30
    i32 128, label %30
    i32 132, label %31
  ]

30:                                               ; preds = %26, %26, %26, %26
  br label %55

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* @S_ABS, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @is_reloc(i32 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %55

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @rel_type(i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %43)
  br label %55

45:                                               ; preds = %31
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @add_reloc(i32* @relocs32, i32 %48)
  br label %55

50:                                               ; preds = %26
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rel_type(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45, %40, %39, %30
  ret i32 0
}

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i64 @is_reloc(i32, i8*) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i32 @rel_type(i32) #1

declare dso_local i32 @add_reloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
