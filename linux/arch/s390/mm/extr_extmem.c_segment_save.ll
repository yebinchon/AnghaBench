; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_segment_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_segment_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MACHINE_IS_VM = common dso_local global i32 0, align 4
@dcss_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Saving unknown DCSS %s failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DEFSEG %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" %lX-%lX %s\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@segtype_string = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"SAVESEG %s\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Saving a DCSS failed with DEFSEG response code %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Saving a DCSS failed with SAVESEG response code %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @segment_save(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dcss_segment*, align 8
  %4 = alloca [160 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MACHINE_IS_VM, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %95

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @dcss_lock)
  %13 = load i8*, i8** %2, align 8
  %14 = call %struct.dcss_segment* @segment_by_name(i8* %13)
  store %struct.dcss_segment* %14, %struct.dcss_segment** %3, align 8
  %15 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %16 = icmp eq %struct.dcss_segment* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %93

20:                                               ; preds = %11
  %21 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %70, %20
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %27 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %37 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %47 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32*, i32** @segtype_string, align 8
  %57 = load %struct.dcss_segment*, %struct.dcss_segment** %3, align 8
  %58 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %56, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %55, i32 %68)
  br label %70

70:                                               ; preds = %30
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %24

73:                                               ; preds = %24
  %74 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %75 = load i8*, i8** %2, align 8
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  store i32 0, i32* %7, align 4
  %77 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %78 = call i32 @cpcmd(i8* %77, i32* null, i32 0, i32* %7)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %93

84:                                               ; preds = %73
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %86 = call i32 @cpcmd(i8* %85, i32* null, i32 0, i32* %7)
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %89, %81, %17
  %94 = call i32 @mutex_unlock(i32* @dcss_lock)
  br label %95

95:                                               ; preds = %93, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dcss_segment* @segment_by_name(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cpcmd(i8*, i32*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
