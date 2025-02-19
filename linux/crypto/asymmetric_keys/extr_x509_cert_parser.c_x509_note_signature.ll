; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_signature.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Signature type: %u size %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Got cert with pkey (%u) and sig (%u) algorithm OIDs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ecrdsa\00", align 1
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_note_signature(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.x509_parse_context*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.x509_parse_context*
  store %struct.x509_parse_context* %14, %struct.x509_parse_context** %12, align 8
  %15 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %16 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %21 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %24 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %29 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %32 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %84

37:                                               ; preds = %5
  %38 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %39 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %49 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @strcmp(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %47, %37
  %58 = load i64, i64* %11, align 8
  %59 = icmp ult i64 %58, 1
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @EBADMSG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %84

68:                                               ; preds = %60
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %68, %47
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %76 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i8* %74, i8** %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %81 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %79, i64* %83, align 8
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %73, %65, %27
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
