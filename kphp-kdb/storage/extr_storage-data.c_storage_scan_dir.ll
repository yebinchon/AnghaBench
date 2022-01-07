; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_scan_dir.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_scan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64 }
%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@Dirs = common dso_local global %struct.TYPE_2__* null, align 8
@STORAGE_ERR_SCANDIR_MULTIPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"storage_scan_dir: opendir (%s) fail. %m\0A\00", align 1
@STORAGE_ERR_OPENDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Binlog path too long\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"storage_scan_dir (%d): there are %d add_binlog_fails.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_scan_dir(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @STORAGE_ERR_SCANDIR_MULTIPLE, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %162

26:                                               ; preds = %1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32* @opendir(i8* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @STORAGE_ERR_OPENDIR, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %162

45:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %130, %127, %80, %62, %45
  %47 = load i32*, i32** %7, align 8
  %48 = call %struct.dirent* @readdir(i32* %47)
  store %struct.dirent* %48, %struct.dirent** %8, align 8
  %49 = icmp ne %struct.dirent* %48, null
  br i1 %49, label %50, label %138

50:                                               ; preds = %46
  %51 = load %struct.dirent*, %struct.dirent** %8, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.dirent*, %struct.dirent** %8, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %50
  br label %46

63:                                               ; preds = %56
  %64 = load %struct.dirent*, %struct.dirent** %8, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %68, 4
  br i1 %69, label %80, label %70

70:                                               ; preds = %63
  %71 = load %struct.dirent*, %struct.dirent** %8, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 -4
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70, %63
  br label %46

81:                                               ; preds = %70
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = sub i64 %14, 1
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @exit(i32 1) #4
  unreachable

98:                                               ; preds = %81
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcpy(i8* %16, i8* %104)
  %106 = call i32 @strlen(i8* %16)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %16, i64 %107
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 -1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 47
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %11, align 8
  store i8 47, i8* %115, align 1
  br label %117

117:                                              ; preds = %114, %98
  %118 = load i8*, i8** %11, align 8
  %119 = load %struct.dirent*, %struct.dirent** %8, align 8
  %120 = getelementptr inbounds %struct.dirent, %struct.dirent* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcpy(i8* %118, i8* %121)
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @storage_add_binlog(i8* %16, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %46

130:                                              ; preds = %117
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %46

138:                                              ; preds = %46
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @closedir(i32* %139)
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Dirs, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %138
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %138
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %36, %24
  %163 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @vkprintf(i32, i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @storage_add_binlog(i8*, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
