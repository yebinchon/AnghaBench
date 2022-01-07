; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_seed.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_state = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drbg_string = type { i64, i32, i64 }

@seedlist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DRBG: personalization string too long %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DRBG: using test entropy\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"DRBG: (re)seeding with %u bytes of entropy\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DRBG: jent failed with %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"DRBG: using personalization string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_state*, %struct.drbg_string*, i32)* @drbg_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_seed(%struct.drbg_state* %0, %struct.drbg_string* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbg_state*, align 8
  %6 = alloca %struct.drbg_string*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [96 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.drbg_string, align 8
  store %struct.drbg_state* %0, %struct.drbg_state** %5, align 8
  store %struct.drbg_string* %1, %struct.drbg_string** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %13 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %12, i32 0, i32 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @drbg_sec_strength(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @seedlist, align 4
  %19 = call i32 @LIST_HEAD(i32 %18)
  %20 = load %struct.drbg_string*, %struct.drbg_string** %6, align 8
  %21 = icmp ne %struct.drbg_string* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = load %struct.drbg_string*, %struct.drbg_string** %6, align 8
  %24 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %27 = call i64 @drbg_max_addtl(%struct.drbg_state* %26)
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.drbg_string*, %struct.drbg_string** %6, align 8
  %31 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %161

36:                                               ; preds = %22, %3
  %37 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %38 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i64 @list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %44 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %48 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @drbg_string_fill(%struct.drbg_string* %11, i8* %46, i32 %50)
  %52 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %115

53:                                               ; preds = %36
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  %64 = udiv i32 %63, 2
  %65 = mul i32 %64, 3
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %53
  %67 = load i32, i32* %10, align 4
  %68 = mul i32 %67, 2
  %69 = zext i32 %68 to i64
  %70 = icmp ugt i64 %69, 96
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %74 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i64 0, i64 0
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @drbg_get_random_bytes(%struct.drbg_state* %73, i8* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %155

80:                                               ; preds = %66
  %81 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %82 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i64 0, i64 0
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @drbg_string_fill(%struct.drbg_string* %11, i8* %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %114

91:                                               ; preds = %80
  %92 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %93 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i64 0, i64 0
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @crypto_rng_get_bytes(i32 %94, i8* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %155

106:                                              ; preds = %91
  %107 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i64 0, i64 0
  %108 = load i32, i32* %10, align 4
  %109 = mul i32 %108, 2
  %110 = call i32 @drbg_string_fill(%struct.drbg_string* %11, i8* %107, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = mul i32 %111, 2
  %113 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %106, %85
  br label %115

115:                                              ; preds = %114, %42
  %116 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %11, i32 0, i32 1
  %117 = call i32 @list_add_tail(i32* %116, i32* @seedlist)
  %118 = load %struct.drbg_string*, %struct.drbg_string** %6, align 8
  %119 = icmp ne %struct.drbg_string* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.drbg_string*, %struct.drbg_string** %6, align 8
  %122 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load %struct.drbg_string*, %struct.drbg_string** %6, align 8
  %127 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 0, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.drbg_string*, %struct.drbg_string** %6, align 8
  %132 = getelementptr inbounds %struct.drbg_string, %struct.drbg_string* %131, i32 0, i32 1
  %133 = call i32 @list_add_tail(i32* %132, i32* @seedlist)
  %134 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %125, %120, %115
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %135
  %139 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %140 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %143 = call i32 @drbg_statelen(%struct.drbg_state* %142)
  %144 = call i32 @memset(i32 %141, i32 0, i32 %143)
  %145 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %146 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %149 = call i32 @drbg_statelen(%struct.drbg_state* %148)
  %150 = call i32 @memset(i32 %147, i32 0, i32 %149)
  br label %151

151:                                              ; preds = %138, %135
  %152 = load %struct.drbg_state*, %struct.drbg_state** %5, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @__drbg_seed(%struct.drbg_state* %152, i32* @seedlist, i32 %153)
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %151, %103, %79
  %156 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i64 0, i64 0
  %157 = load i32, i32* %10, align 4
  %158 = mul i32 %157, 2
  %159 = call i32 @memzero_explicit(i8* %156, i32 %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %155, %29
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @drbg_sec_strength(i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @drbg_max_addtl(%struct.drbg_state*) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @drbg_string_fill(%struct.drbg_string*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @drbg_get_random_bytes(%struct.drbg_state*, i8*, i32) #1

declare dso_local i32 @crypto_rng_get_bytes(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @drbg_statelen(%struct.drbg_state*) #1

declare dso_local i32 @__drbg_seed(%struct.drbg_state*, i32*, i32) #1

declare dso_local i32 @memzero_explicit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
