; ModuleID = '/home/carl/AnghaBench/htop/freebsd/extr_FreeBSDProcessList.c_FreeBSDProcessList_readJailName.c'
source_filename = "/home/carl/AnghaBench/htop/freebsd/extr_FreeBSDProcessList.c_FreeBSDProcessList_readJailName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i8 }
%struct.iovec = type { i8*, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"jid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@jail_errmsg = common dso_local global i8* null, align 8
@JAIL_ERRMSGLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"jail_get: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FreeBSDProcessList_readJailName(%struct.kinfo_proc* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x %struct.iovec], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %3, align 8
  %10 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %15 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %1
  %20 = trunc i64 %11 to i32
  %21 = call i32 @memset(i8* %13, i32 0, i32 %20)
  %22 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 0
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 1
  store i32 4, i32* %25, align 8
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %27 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %26, i32 0, i32 0
  %28 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 1
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 16
  %30 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 1
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 2
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 2
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 1
  store i32 5, i32* %35, align 8
  %36 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 3
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 0
  store i8* %13, i8** %37, align 16
  %38 = trunc i64 %11 to i32
  %39 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 3
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 4
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 16
  %43 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 4
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 1
  store i32 7, i32* %44, align 8
  %45 = load i8*, i8** @jail_errmsg, align 8
  %46 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 5
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 16
  %48 = load i32, i32* @JAIL_ERRMSGLEN, align 4
  %49 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 5
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @jail_errmsg, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds [6 x %struct.iovec], [6 x %struct.iovec]* %5, i64 0, i64 0
  %54 = call i32 @jail_get(%struct.iovec* %53, i32 6, i32 0)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %19
  %58 = load i8*, i8** @jail_errmsg, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** @jail_errmsg, align 8
  %64 = load i32, i32* @JAIL_ERRMSGLEN, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 @xSnprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  store i8* null, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %94

69:                                               ; preds = %19
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %72 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = call i8* @xStrdup(i8* %13)
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @errno, align 4
  %82 = load i8*, i8** @jail_errmsg, align 8
  %83 = load i32, i32* @JAIL_ERRMSGLEN, align 4
  %84 = call i32 @strerror_r(i32 %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i8*, i8** %6, align 8
  store i8* %86, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %94

87:                                               ; preds = %69
  store i8* null, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %94

88:                                               ; preds = %1
  %89 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 45, i8* %89, align 16
  %90 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %90, align 1
  %91 = call i8* @xStrdup(i8* %13)
  store i8* %91, i8** %6, align 8
  br label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  store i8* %93, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %94

94:                                               ; preds = %92, %87, %85, %68
  %95 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @jail_get(%struct.iovec*, i32, i32) #2

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i8* @xStrdup(i8*) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
