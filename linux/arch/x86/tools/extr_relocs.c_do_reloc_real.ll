; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_do_reloc_real.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_do_reloc_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@SHN_ABS = common dso_local global i64 0, align 8
@S_REL = common dso_local global i32 0, align 4
@S_ABS = common dso_local global i32 0, align 4
@S_SEG = common dso_local global i32 0, align 4
@relocs16 = common dso_local global i32 0, align 4
@S_LIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid %s %s relocation: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@relocs32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unsupported relocation type: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section*, %struct.TYPE_6__*, %struct.TYPE_5__*, i8*)* @do_reloc_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reloc_real(%struct.section* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i8* %3) #0 {
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
  switch i32 %29, label %107 [
    i32 131, label %30
    i32 129, label %30
    i32 130, label %30
    i32 128, label %30
    i32 133, label %31
    i32 132, label %67
  ]

30:                                               ; preds = %26, %26, %26, %26
  br label %114

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i32, i32* @S_ABS, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @is_reloc(i32 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %114

40:                                               ; preds = %34
  %41 = load i32, i32* @S_SEG, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @is_reloc(i32 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @add_reloc(i32* @relocs16, i32 %48)
  br label %114

50:                                               ; preds = %40
  br label %58

51:                                               ; preds = %31
  %52 = load i32, i32* @S_LIN, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @is_reloc(i32 %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %114

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @rel_type(i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (i8*, i8*, i32, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %64, i8* %65)
  br label %114

67:                                               ; preds = %26
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* @S_ABS, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @is_reloc(i32 %71, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %114

76:                                               ; preds = %70
  %77 = load i32, i32* @S_REL, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = call i64 @is_reloc(i32 %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @add_reloc(i32* @relocs32, i32 %84)
  br label %114

86:                                               ; preds = %76
  br label %98

87:                                               ; preds = %67
  %88 = load i32, i32* @S_LIN, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = call i64 @is_reloc(i32 %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @add_reloc(i32* @relocs32, i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  br label %114

98:                                               ; preds = %86
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @rel_type(i32 %103)
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 (i8*, i8*, i32, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %102, i32 %104, i8* %105)
  br label %114

107:                                              ; preds = %26
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @rel_type(i32 %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, i8*, i32, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %98, %97, %81, %75, %58, %56, %45, %39, %30
  ret i32 0
}

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i64 @is_reloc(i32, i8*) #1

declare dso_local i32 @add_reloc(i32*, i32) #1

declare dso_local i32 @die(i8*, i8*, i32, ...) #1

declare dso_local i32 @rel_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
