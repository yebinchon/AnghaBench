; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_get_booting_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_get_booting_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"/proc/stat\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"get_booting_time: open (\22/proc/stat\22, O_RDONLY) failed. %m\0A\00", align 1
@Buff = common dso_local global i8* null, align 8
@BUFFSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"get_booting_time: read failed. %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"get_booting_time: BUFFSIZE (%d) too small.\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0Abtime\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"get_booting_time: btime substring didn't find.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"booting time is %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_booting_time() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @O_RDONLY, align 4
  %7 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %0
  %14 = load i8*, i8** @Buff, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 10, i8* %15, align 1
  %16 = load i32, i32* %2, align 4
  %17 = load i8*, i8** @Buff, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i32, i32* @BUFFSIZE, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @read(i32 %16, i8* %18, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = call i32 @fd_close(i32* %2)
  %26 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %13
  %29 = call i32 @fd_close(i32* %2)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @BUFFSIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @BUFFSIZE, align 4
  %36 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %28
  %39 = load i8*, i8** @Buff, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** @Buff, align 8
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %66, %38
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @strstr(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** @Buff, align 8
  %51 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  %52 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %44
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  %57 = call i32 @sscanf(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %5)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %1, align 4
  br label %68

63:                                               ; preds = %54
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 6
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %63
  br i1 true, label %44, label %67

67:                                               ; preds = %66
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %59
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fd_close(i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
