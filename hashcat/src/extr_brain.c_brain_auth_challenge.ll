; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_auth_challenge.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_auth_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@brain_auth_challenge.urandom = internal global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brain_auth_challenge() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @time(i32* null)
  %5 = call i32 @srand(i32 %4)
  %6 = call i32 (...) @rand()
  store i32 %6, i32* %2, align 4
  %7 = load i8*, i8** @brain_auth_challenge.urandom, align 8
  %8 = call i32 @hc_fopen(i32* %3, i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @brain_auth_challenge.urandom, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 (i32, i32, i8*, ...) @brain_logging(i32 %11, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %12, i32 %14)
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %31

17:                                               ; preds = %0
  %18 = call i32 @hc_fread(i32* %2, i32 4, i32 1, i32* %3)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** @brain_auth_challenge.urandom, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i32, i32, i8*, ...) @brain_logging(i32 %21, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %22, i32 %24)
  %26 = call i32 @hc_fclose(i32* %3)
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %31

28:                                               ; preds = %17
  %29 = call i32 @hc_fclose(i32* %3)
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %28, %20, %10
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @brain_logging(i32, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hc_fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @hc_fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
