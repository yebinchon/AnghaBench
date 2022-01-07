; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_mscode_parser.c_mscode_note_content_type.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_mscode_parser.c_mscode_note_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OID__NR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown OID: %s\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@OID_msPeImageDataObjId = common dso_local global i32 0, align 4
@OID_msIndividualSPKeyPurpose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unexpected content type OID %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mscode_note_content_type(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [50 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @look_up_OID(i8* %14, i64 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @OID__NR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %24 = call i32 @sprint_oid(i8* %21, i64 %22, i8* %23, i32 50)
  %25 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EBADMSG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %43

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @OID_msPeImageDataObjId, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @OID_msIndividualSPKeyPurpose, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EBADMSG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %33, %29
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %37, %20
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @look_up_OID(i8*, i64) #1

declare dso_local i32 @sprint_oid(i8*, i64, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
