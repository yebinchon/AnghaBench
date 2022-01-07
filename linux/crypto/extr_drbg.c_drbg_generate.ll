; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_generate.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_state = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.drbg_state*, i8*, i32, i32*)* }
%struct.drbg_string = type { i32, i32, i32* }

@addtllist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DRBG: not yet seeded\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"DRBG: no output buffer provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"DRBG: wrong format of additional information\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"DRBG: requested random numbers too large %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"DRBG: additional information string too long %zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"DRBG: reseeding before generation (prediction resistance: %s, state %s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"seeded\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"unseeded\00", align 1
@DRBG_CTR = common dso_local global i32 0, align 4
@DRBG_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_state*, i8*, i32, %struct.drbg_string*)* @drbg_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_generate(%struct.drbg_state* %0, i8* %1, i32 %2, %struct.drbg_string* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbg_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbg_string*, align 8
  %10 = alloca i32, align 4
  store %struct.drbg_state* %0, %struct.drbg_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.drbg_string* %3, %struct.drbg_string** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @addtllist, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %14 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %147

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 0, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24, %21
  %28 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %147

31:                                               ; preds = %24
  %32 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %33 = icmp ne %struct.drbg_string* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %36 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* null, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %41 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 0, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %147

48:                                               ; preds = %39, %34, %31
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %53 = call i32 @drbg_max_request_bytes(%struct.drbg_state* %52)
  %54 = icmp ugt i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %145

58:                                               ; preds = %48
  %59 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %60 = icmp ne %struct.drbg_string* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %63 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %66 = call i32 @drbg_max_addtl(%struct.drbg_state* %65)
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %70 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %145

73:                                               ; preds = %61, %58
  %74 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %75 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %78 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %83 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %82, i32 0, i32 2
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %73
  %85 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %86 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %91 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %96 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %101 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %102 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %107 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* %100, i8* %106)
  %108 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %109 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %110 = call i32 @drbg_seed(%struct.drbg_state* %108, %struct.drbg_string* %109, i32 1)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %94
  br label %145

114:                                              ; preds = %94
  store %struct.drbg_string* null, %struct.drbg_string** %9, align 8
  br label %115

115:                                              ; preds = %114, %89
  %116 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %117 = icmp ne %struct.drbg_string* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %120 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 0, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.drbg_string*, %struct.drbg_string** %9, align 8
  %125 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %124, i32 0, i32 0
  %126 = call i32 @list_add_tail(i32* %125, i32* @addtllist)
  br label %127

127:                                              ; preds = %123, %118, %115
  %128 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %129 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %128, i32 0, i32 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32 (%struct.drbg_state*, i8*, i32, i32*)*, i32 (%struct.drbg_state*, i8*, i32, i32*)** %131, align 8
  %133 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 %132(%struct.drbg_state* %133, i8* %134, i32 %135, i32* @addtllist)
  store i32 %136, i32* %10, align 4
  %137 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %138 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp sge i32 0, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %127
  br label %145

144:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %144, %143, %113, %68, %55
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %145, %44, %27, %17
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i32 @drbg_max_request_bytes(%struct.drbg_state*) #1

declare dso_local i32 @drbg_max_addtl(%struct.drbg_state*) #1

declare dso_local i32 @drbg_seed(%struct.drbg_state*, %struct.drbg_string*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
