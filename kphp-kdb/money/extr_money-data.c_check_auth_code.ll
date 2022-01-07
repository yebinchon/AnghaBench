; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_check_auth_code.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_check_auth_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.account_type = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@check_auth_code.temp = internal global [8192 x i8] zeroinitializer, align 16
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"check_auth_code: signature='%.32s', signed_string='%s', acc_type=%d, acc_id=%lld, secret=%016llx\0A\00", align 1
@MAX_ACCOUNT_TYPE = common dso_local global i32 0, align 4
@AccTypes = common dso_local global %struct.account_type** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_auth_code(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.account_type*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.TYPE_3__* @get_account(i32 %13, i64 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @verbosity, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  %35 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23, i32 %24, i64 %25, i32 %34)
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sge i32 %37, 4096
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MAX_ACCOUNT_TYPE, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %36
  store i32 -1, i32* %5, align 4
  br label %124

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @memcpy(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @check_auth_code.temp, i64 0, i64 0), i8* %45, i32 %46)
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @check_signature(i8* %54, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @check_auth_code.temp, i64 0, i64 0), i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  br label %124

65:                                               ; preds = %53
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @check_signature(i8* %66, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @check_auth_code.temp, i64 0, i64 0), i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %124

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %50, %44
  %79 = load %struct.account_type**, %struct.account_type*** @AccTypes, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.account_type*, %struct.account_type** %79, i64 %81
  %83 = load %struct.account_type*, %struct.account_type** %82, align 8
  store %struct.account_type* %83, %struct.account_type** %12, align 8
  %84 = load %struct.account_type*, %struct.account_type** %12, align 8
  %85 = icmp ne %struct.account_type* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %124

87:                                               ; preds = %78
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.account_type*, %struct.account_type** %12, align 8
  %91 = getelementptr inbounds %struct.account_type, %struct.account_type* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @check_signature(i8* %88, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @check_auth_code.temp, i64 0, i64 0), i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load %struct.account_type*, %struct.account_type** %12, align 8
  %97 = getelementptr inbounds %struct.account_type, %struct.account_type* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %5, align 4
  br label %124

99:                                               ; preds = %87
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.account_type*, %struct.account_type** %12, align 8
  %103 = getelementptr inbounds %struct.account_type, %struct.account_type* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @check_signature(i8* %100, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @check_auth_code.temp, i64 0, i64 0), i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.account_type*, %struct.account_type** %12, align 8
  %109 = getelementptr inbounds %struct.account_type, %struct.account_type* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %5, align 4
  br label %124

111:                                              ; preds = %99
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.account_type*, %struct.account_type** %12, align 8
  %115 = getelementptr inbounds %struct.account_type, %struct.account_type* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @check_signature(i8* %112, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @check_auth_code.temp, i64 0, i64 0), i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.account_type*, %struct.account_type** %12, align 8
  %121 = getelementptr inbounds %struct.account_type, %struct.account_type* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %5, align 4
  br label %124

123:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %119, %107, %95, %86, %73, %61, %43
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_3__* @get_account(i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @check_signature(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
