; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_livepatch.c_arch_klp_init_object_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_livepatch.c_arch_klp_init_object_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_patch = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.klp_modinfo* }
%struct.klp_modinfo = type { i64, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.klp_object = type { i8* }

@MODULE_NAME_LEN = common dso_local global i32 0, align 4
@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c".klp.arch.%55[^.].%127s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c".altinstructions\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c".parainstructions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_klp_init_object_loaded(%struct.klp_patch* %0, %struct.klp_object* %1) #0 {
  %3 = alloca %struct.klp_patch*, align 8
  %4 = alloca %struct.klp_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.klp_modinfo*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.klp_patch* %0, %struct.klp_patch** %3, align 8
  store %struct.klp_object* %1, %struct.klp_object** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %16 = load i32, i32* @MODULE_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32, i32* @KSYM_NAME_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %23 = load %struct.klp_patch*, %struct.klp_patch** %3, align 8
  %24 = getelementptr inbounds %struct.klp_patch, %struct.klp_patch* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.klp_modinfo*, %struct.klp_modinfo** %26, align 8
  store %struct.klp_modinfo* %27, %struct.klp_modinfo** %6, align 8
  %28 = load %struct.klp_object*, %struct.klp_object** %4, align 8
  %29 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.klp_object*, %struct.klp_object** %4, align 8
  %34 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %36 ]
  store i8* %38, i8** %12, align 8
  %39 = load i32, i32* @MODULE_NAME_LEN, align 4
  %40 = icmp slt i32 %39, 56
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @KSYM_NAME_LEN, align 4
  %43 = icmp ne i32 %42, 128
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i1 [ true, %37 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUILD_BUG_ON(i32 %46)
  %48 = load %struct.klp_modinfo*, %struct.klp_modinfo** %6, align 8
  %49 = getelementptr inbounds %struct.klp_modinfo, %struct.klp_modinfo* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %7, align 8
  br label %51

51:                                               ; preds = %91, %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = load %struct.klp_modinfo*, %struct.klp_modinfo** %6, align 8
  %54 = getelementptr inbounds %struct.klp_modinfo, %struct.klp_modinfo* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.klp_modinfo*, %struct.klp_modinfo** %6, align 8
  %57 = getelementptr inbounds %struct.klp_modinfo, %struct.klp_modinfo* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %60
  %62 = icmp ult %struct.TYPE_6__* %52, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %51
  %64 = load %struct.klp_modinfo*, %struct.klp_modinfo** %6, align 8
  %65 = getelementptr inbounds %struct.klp_modinfo, %struct.klp_modinfo* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = call i32 @sscanf(i64 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %22)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %91

75:                                               ; preds = %63
  %76 = load i8*, i8** %12, align 8
  %77 = call i64 @strcmp(i8* %19, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %91

80:                                               ; preds = %75
  %81 = call i64 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %8, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i64 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %9, align 8
  br label %90

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %79, %74
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 1
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %7, align 8
  br label %51

94:                                               ; preds = %51
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %103, i64 %107
  %109 = call i32 @apply_alternatives(i8* %102, i8* %108)
  br label %110

110:                                              ; preds = %97, %94
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = icmp ne %struct.TYPE_6__* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** %11, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %119, i64 %123
  %125 = call i32 @apply_paravirt(i8* %118, i8* %124)
  br label %126

126:                                              ; preds = %113, %110
  %127 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %127)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @sscanf(i64, i8*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @apply_alternatives(i8*, i8*) #2

declare dso_local i32 @apply_paravirt(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
