; ModuleID = '/home/carl/AnghaBench/git/extr_send-pack.c_option_parse_push_signed.c'
source_filename = "/home/carl/AnghaBench/git/extr_send-pack.c_option_parse_push_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i64 }

@SEND_PACK_PUSH_CERT_NEVER = common dso_local global i32 0, align 4
@SEND_PACK_PUSH_CERT_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"if-asked\00", align 1
@SEND_PACK_PUSH_CERT_IF_ASKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bad %s argument: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option_parse_push_signed(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* @SEND_PACK_PUSH_CERT_NEVER, align 4
  %12 = load %struct.option*, %struct.option** %5, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32 %11, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @git_parse_maybe_bool(i8* %17)
  switch i32 %18, label %31 [
    i32 1, label %19
    i32 0, label %25
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* @SEND_PACK_PUSH_CERT_ALWAYS, align 4
  %21 = load %struct.option*, %struct.option** %5, align 8
  %22 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32 %20, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %47

25:                                               ; preds = %16
  %26 = load i32, i32* @SEND_PACK_PUSH_CERT_NEVER, align 4
  %27 = load %struct.option*, %struct.option** %5, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32 %26, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %47

31:                                               ; preds = %16
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @SEND_PACK_PUSH_CERT_IF_ASKED, align 4
  %37 = load %struct.option*, %struct.option** %5, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32 %36, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %47

41:                                               ; preds = %31
  %42 = load %struct.option*, %struct.option** %5, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %41, %35, %25, %19, %10
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @die(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
