; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_clitest.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_clitest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_client = type { i32 }
%struct.t_preconf = type { i32, i32 }
%struct.t_num = type { i8*, i8* }

@MAXUSERLEN = common dso_local global i32 0, align 4
@MAXHEXPARAMLEN = common dso_local global i32 0, align 4
@MAXPARAMLEN = common dso_local global i32 0, align 4
@MAXSALTLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Enter username: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Enter index (from server): \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Enter salt (from server): \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid n, g\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"A (to server): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Enter password:\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Enter B (from server): \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Session key: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Response (to server): %s\0A\00", align 1
@RESPONSE_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Enter server response: \00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Server authentication successful.\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Server authentication failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.t_client*, align 8
  %4 = alloca %struct.t_preconf*, align 8
  %5 = alloca %struct.t_num, align 8
  %6 = alloca %struct.t_num, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca %struct.t_num*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [128 x i8], align 16
  store i32 0, i32* %1, align 4
  %17 = load i32, i32* @MAXUSERLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @MAXHEXPARAMLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @MAXPARAMLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = load i32, i32* @MAXPARAMLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = load i32, i32* @MAXSALTLEN, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = trunc i64 %18 to i32
  %35 = load i32, i32* @stdin, align 4
  %36 = call i32 @fgets(i8* %20, i32 %34, i32 %35)
  %37 = call i32 @strlen(i8* %20)
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %20, i64 %39
  store i8 0, i8* %40, align 1
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = trunc i64 %22 to i32
  %43 = load i32, i32* @stdin, align 4
  %44 = call i32 @fgets(i8* %23, i32 %42, i32 %43)
  %45 = call i32 @atoi(i8* %23)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call %struct.t_preconf* @t_getpreparam(i32 %47)
  store %struct.t_preconf* %48, %struct.t_preconf** %4, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %50 = trunc i64 %22 to i32
  %51 = load i32, i32* @stdin, align 4
  %52 = call i32 @fgets(i8* %23, i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.t_num, %struct.t_num* %5, i32 0, i32 0
  store i8* %32, i8** %53, align 8
  %54 = getelementptr inbounds %struct.t_num, %struct.t_num* %5, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @t_fromb64(i8* %55, i8* %23)
  %57 = getelementptr inbounds %struct.t_num, %struct.t_num* %5, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load %struct.t_preconf*, %struct.t_preconf** %4, align 8
  %59 = getelementptr inbounds %struct.t_preconf, %struct.t_preconf* %58, i32 0, i32 1
  %60 = load %struct.t_preconf*, %struct.t_preconf** %4, align 8
  %61 = getelementptr inbounds %struct.t_preconf, %struct.t_preconf* %60, i32 0, i32 0
  %62 = call %struct.t_client* @t_clientopen(i8* %20, i32* %59, i32* %61, %struct.t_num* %5)
  store %struct.t_client* %62, %struct.t_client** %3, align 8
  %63 = load %struct.t_client*, %struct.t_client** %3, align 8
  %64 = icmp eq %struct.t_client* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %0
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 @exit(i32 1) #4
  unreachable

68:                                               ; preds = %0
  %69 = load %struct.t_client*, %struct.t_client** %3, align 8
  %70 = call %struct.t_num* @t_clientgenexp(%struct.t_client* %69)
  store %struct.t_num* %70, %struct.t_num** %14, align 8
  %71 = load %struct.t_num*, %struct.t_num** %14, align 8
  %72 = getelementptr inbounds %struct.t_num, %struct.t_num* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.t_num*, %struct.t_num** %14, align 8
  %75 = getelementptr inbounds %struct.t_num, %struct.t_num* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @t_tob64(i8* %23, i8* %73, i8* %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %80 = call i32 @t_getpass(i8* %79, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.t_client*, %struct.t_client** %3, align 8
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %83 = call i32 @t_clientpasswd(%struct.t_client* %81, i8* %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %85 = trunc i64 %22 to i32
  %86 = load i32, i32* @stdin, align 4
  %87 = call i32 @fgets(i8* %23, i32 %85, i32 %86)
  %88 = getelementptr inbounds %struct.t_num, %struct.t_num* %6, i32 0, i32 0
  store i8* %26, i8** %88, align 8
  %89 = getelementptr inbounds %struct.t_num, %struct.t_num* %6, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @t_fromb64(i8* %90, i8* %23)
  %92 = getelementptr inbounds %struct.t_num, %struct.t_num* %6, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load %struct.t_client*, %struct.t_client** %3, align 8
  %94 = call i8* @t_clientgetkey(%struct.t_client* %93, %struct.t_num* %6)
  store i8* %94, i8** %15, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = call i8* @t_tohex(i8* %23, i8* %95, i32 40)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  %98 = load %struct.t_client*, %struct.t_client** %3, align 8
  %99 = call i8* @t_clientresponse(%struct.t_client* %98)
  %100 = load i32, i32* @RESPONSE_LEN, align 4
  %101 = call i8* @t_tohex(i8* %23, i8* %99, i32 %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %104 = trunc i64 %22 to i32
  %105 = load i32, i32* @stdin, align 4
  %106 = call i32 @fgets(i8* %23, i32 %104, i32 %105)
  %107 = call i32 @strlen(i8* %23)
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %23, i64 %109
  store i8 0, i8* %110, align 1
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %112 = call i32 @t_fromhex(i8* %111, i8* %23)
  %113 = load %struct.t_client*, %struct.t_client** %3, align 8
  %114 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %115 = call i64 @t_clientverify(%struct.t_client* %113, i8* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %68
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %121

119:                                              ; preds = %68
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  %122 = load %struct.t_client*, %struct.t_client** %3, align 8
  %123 = call i32 @t_clientclose(%struct.t_client* %122)
  store i32 0, i32* %1, align 4
  %124 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %1, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local %struct.t_preconf* @t_getpreparam(i32) #2

declare dso_local i8* @t_fromb64(i8*, i8*) #2

declare dso_local %struct.t_client* @t_clientopen(i8*, i32*, i32*, %struct.t_num*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.t_num* @t_clientgenexp(%struct.t_client*) #2

declare dso_local i8* @t_tob64(i8*, i8*, i8*) #2

declare dso_local i32 @t_getpass(i8*, i32, i8*) #2

declare dso_local i32 @t_clientpasswd(%struct.t_client*, i8*) #2

declare dso_local i8* @t_clientgetkey(%struct.t_client*, %struct.t_num*) #2

declare dso_local i8* @t_tohex(i8*, i8*, i32) #2

declare dso_local i8* @t_clientresponse(%struct.t_client*) #2

declare dso_local i32 @t_fromhex(i8*, i8*) #2

declare dso_local i64 @t_clientverify(%struct.t_client*, i8*) #2

declare dso_local i32 @t_clientclose(%struct.t_client*) #2

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
