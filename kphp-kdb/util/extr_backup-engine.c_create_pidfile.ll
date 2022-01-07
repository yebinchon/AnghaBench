; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_create_pidfile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_create_pidfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@create_pidfile.tmp_buff = internal global [32 x i8] zeroinitializer, align 16
@pidfile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s/backup.pid\00", align 1
@dstdir = common dso_local global i8* null, align 8
@MAX_FPATH_LEN = common dso_local global i32 0, align 4
@tmp_stat = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EISDIR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/proc/%d/\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"fatal: destination directory %s already locked by process %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"warning: removing stale pid file %s\0A\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@pidfile_created = common dso_local global i32 0, align 4
@do_remove_pidfile = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_pidfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pidfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i8*, i8** @pidfile, align 8
  %8 = load i8*, i8** @dstdir, align 8
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @MAX_FPATH_LEN, align 4
  %11 = icmp slt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** @pidfile, align 8
  %15 = call i64 @stat(i8* %14, %struct.TYPE_3__* @tmp_stat)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmp_stat, i32 0, i32 0), align 4
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @EISDIR, align 8
  store i64 %22, i64* @errno, align 8
  store i32 -1, i32* %1, align 4
  br label %99

23:                                               ; preds = %17
  %24 = load i8*, i8** @pidfile, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 (i8*, i32, ...) @open(i8* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %1, align 4
  br label %99

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @read(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @create_pidfile.tmp_buff, i64 0, i64 0), i32 16)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @close(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %1, align 4
  br label %99

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* @create_pidfile.tmp_buff, i64 0, i64 %43
  store i8 0, i8* %44, align 1
  %45 = call i32 @atoi(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @create_pidfile.tmp_buff, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @create_pidfile.tmp_buff, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i64 @stat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @create_pidfile.tmp_buff, i64 0, i64 0), %struct.TYPE_3__* @tmp_stat)
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** @dstdir, align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  %57 = call i32 @exit(i32 2) #3
  unreachable

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i8*, i8** @pidfile, align 8
  %62 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** @pidfile, align 8
  %64 = call i64 @unlink(i8* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ENOENT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %1, align 4
  br label %99

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %71, %0
  %73 = load i8*, i8** @pidfile, align 8
  %74 = load i32, i32* @O_WRONLY, align 4
  %75 = load i32, i32* @O_CREAT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @O_EXCL, align 4
  %78 = or i32 %76, %77
  %79 = call i32 (i8*, i32, ...) @open(i8* %73, i32 %78, i32 416)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 -1, i32* %1, align 4
  br label %99

83:                                               ; preds = %72
  store i32 1, i32* @pidfile_created, align 4
  %84 = load i32, i32* @do_remove_pidfile, align 4
  %85 = call i32 @atexit(i32 %84)
  %86 = call i32 (...) @getpid()
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @create_pidfile.tmp_buff, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @write(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @create_pidfile.tmp_buff, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @close(i32 %94)
  store i32 -1, i32* %1, align 4
  br label %99

96:                                               ; preds = %83
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @close(i32 %97)
  store i32 0, i32* %1, align 4
  br label %99

99:                                               ; preds = %96, %93, %82, %70, %37, %29, %21
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @kprintf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
