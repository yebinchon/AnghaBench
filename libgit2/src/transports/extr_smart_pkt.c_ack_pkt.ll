; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_ack_pkt.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_ack_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@GIT_PKT_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ACK \00", align 1
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@GIT_ACK_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@GIT_ACK_COMMON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@GIT_ACK_READY = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"error parsing ACK pkt-line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i64)* @ack_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ack_pkt(i32** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call %struct.TYPE_5__* @git__calloc(i32 1, i32 12)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %11 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %10)
  %12 = load i32, i32* @GIT_PKT_ACK, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @git__prefixncmp(i8* %15, i64 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %89

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %22, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 4
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @git_oid_fromstr(i32* %30, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %20
  br label %89

35:                                               ; preds = %28
  %36 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %6, align 8
  %39 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %85

44:                                               ; preds = %35
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @git__prefixncmp(i8* %55, i64 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @GIT_ACK_CONTINUE, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %84

63:                                               ; preds = %50
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @git__prefixncmp(i8* %64, i64 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @GIT_ACK_COMMON, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %83

72:                                               ; preds = %63
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @git__prefixncmp(i8* %73, i64 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @GIT_ACK_READY, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %82

81:                                               ; preds = %72
  br label %89

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %59
  br label %85

85:                                               ; preds = %84, %44, %35
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = bitcast %struct.TYPE_5__* %86 to i32*
  %88 = load i32**, i32*** %5, align 8
  store i32* %87, i32** %88, align 8
  store i32 0, i32* %4, align 4
  br label %94

89:                                               ; preds = %81, %34, %19
  %90 = load i32, i32* @GIT_ERROR_NET, align 4
  %91 = call i32 @git_error_set(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = call i32 @git__free(%struct.TYPE_5__* %92)
  store i32 -1, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_5__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__*) #1

declare dso_local i64 @git__prefixncmp(i8*, i64, i8*) #1

declare dso_local i64 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git__free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
