; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_linksys_bootcount.c_mtd_resetbc.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_linksys_bootcount.c_mtd_resetbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info_user = type { i32, i32, i32, i64 }
%struct.bootcounter = type { i8*, i32, i8* }
%struct.erase_info_user = type { i32, i32, i32, i64 }

@page = common dso_local global i64 0, align 8
@MEMGETINFO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get mtd info!\0A\00", align 1
@BOOTCOUNT_MAGIC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"unexpected magic %08x, bailing out\0A\00", align 1
@MEMERASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to erase block: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to write: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_resetbc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtd_info_user, align 8
  %5 = alloca %struct.bootcounter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.erase_info_user, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i64, i64* @page, align 8
  %13 = inttoptr i64 %12 to %struct.bootcounter*
  store %struct.bootcounter* %13, %struct.bootcounter** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @mtd_check_open(i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MEMGETINFO, align 4
  %18 = call i64 @ioctl(i32 %16, i32 %17, %struct.mtd_info_user* %4)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %128

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %25, %27
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %67, %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %36, %38
  %40 = call i32 @pread(i32 %34, %struct.bootcounter* %35, i32 24, i32 %39)
  %41 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %42 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** @BOOTCOUNT_MAGIC, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %33
  %47 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %48 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, inttoptr (i64 4294967295 to i8*)
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @stderr, align 4
  %53 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %54 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %125

57:                                               ; preds = %46, %33
  %58 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %59 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, inttoptr (i64 4294967295 to i8*)
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %70

63:                                               ; preds = %57
  %64 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %65 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %29

70:                                               ; preds = %62, %29
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %125

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %11, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %11, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @MEMERASE, align 4
  %85 = bitcast %struct.erase_info_user* %11 to %struct.mtd_info_user*
  %86 = call i64 @ioctl(i32 %83, i32 %84, %struct.mtd_info_user* %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  store i32 -1, i32* %2, align 4
  br label %128

94:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %97 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memset(%struct.bootcounter* %96, i32 255, i32 %98)
  %100 = load i8*, i8** @BOOTCOUNT_MAGIC, align 8
  %101 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %102 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %104 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %103, i32 0, i32 1
  store i32 0, i32* %104, align 8
  %105 = load i8*, i8** @BOOTCOUNT_MAGIC, align 8
  %106 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %107 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.bootcounter*, %struct.bootcounter** %5, align 8
  %110 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %4, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul i32 %112, %114
  %116 = call i32 @pwrite(i32 %108, %struct.bootcounter* %109, i32 %111, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %95
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %95
  %124 = call i32 (...) @sync()
  br label %125

125:                                              ; preds = %123, %73, %51
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @close(i32 %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %125, %90, %20
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @mtd_check_open(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mtd_info_user*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @pread(i32, %struct.bootcounter*, i32, i32) #1

declare dso_local i32 @memset(%struct.bootcounter*, i32, i32) #1

declare dso_local i32 @pwrite(i32, %struct.bootcounter*, i32, i32) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
