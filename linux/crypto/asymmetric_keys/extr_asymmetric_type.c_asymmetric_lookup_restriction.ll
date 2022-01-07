; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_lookup_restriction.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_lookup_restriction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_restriction = type { i32 }
%struct.key = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"builtin_trusted\00", align 1
@restrict_link_by_builtin_trusted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"builtin_and_secondary_trusted\00", align 1
@restrict_link_by_builtin_and_secondary_trusted = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"key_or_keyring\00", align 1
@restrict_link_by_key_or_keyring = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@restrict_link_by_key_or_keyring_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_restriction* (i8*)* @asymmetric_lookup_restriction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_restriction* @asymmetric_lookup_restriction(i8* %0) #0 {
  %2 = alloca %struct.key_restriction*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.key_restriction*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.key_restriction* @ERR_PTR(i32 %14)
  store %struct.key_restriction* %15, %struct.key_restriction** %7, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @restrict_link_by_builtin_trusted, align 4
  %21 = call %struct.key_restriction* @asymmetric_restriction_alloc(i32 %20, %struct.key_restriction* null)
  store %struct.key_restriction* %21, %struct.key_restriction** %2, align 8
  br label %104

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strcmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @restrict_link_by_builtin_and_secondary_trusted, align 4
  %28 = call %struct.key_restriction* @asymmetric_restriction_alloc(i32 %27, %struct.key_restriction* null)
  store %struct.key_restriction* %28, %struct.key_restriction** %2, align 8
  br label %104

29:                                               ; preds = %22
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kstrndup(i8* %30, i32 %31, i32 %32)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.key_restriction* @ERR_PTR(i32 %38)
  store %struct.key_restriction* %39, %struct.key_restriction** %2, align 8
  br label %104

40:                                               ; preds = %29
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %6, align 8
  %42 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %99

49:                                               ; preds = %46
  %50 = load i32, i32* @restrict_link_by_key_or_keyring, align 4
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %51 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %100

59:                                               ; preds = %54
  %60 = load i32, i32* @restrict_link_by_key_or_keyring_chain, align 4
  store i32 %60, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @kstrtos32(i8* %62, i32 0, i64* %9)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %100

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store %struct.key* null, %struct.key** %10, align 8
  br label %86

73:                                               ; preds = %69, %66
  %74 = load i64, i64* %9, align 8
  %75 = call %struct.key_restriction* @key_lookup(i64 %74)
  %76 = bitcast %struct.key_restriction* %75 to %struct.key*
  store %struct.key* %76, %struct.key** %10, align 8
  %77 = load %struct.key*, %struct.key** %10, align 8
  %78 = bitcast %struct.key* %77 to %struct.key_restriction*
  %79 = call i64 @IS_ERR(%struct.key_restriction* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.key*, %struct.key** %10, align 8
  %83 = bitcast %struct.key* %82 to %struct.key_restriction*
  %84 = call %struct.key_restriction* @ERR_CAST(%struct.key_restriction* %83)
  store %struct.key_restriction* %84, %struct.key_restriction** %7, align 8
  br label %100

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.key*, %struct.key** %10, align 8
  %89 = bitcast %struct.key* %88 to %struct.key_restriction*
  %90 = call %struct.key_restriction* @asymmetric_restriction_alloc(i32 %87, %struct.key_restriction* %89)
  store %struct.key_restriction* %90, %struct.key_restriction** %7, align 8
  %91 = load %struct.key_restriction*, %struct.key_restriction** %7, align 8
  %92 = call i64 @IS_ERR(%struct.key_restriction* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.key*, %struct.key** %10, align 8
  %96 = bitcast %struct.key* %95 to %struct.key_restriction*
  %97 = call i32 @key_put(%struct.key_restriction* %96)
  br label %98

98:                                               ; preds = %94, %86
  br label %99

99:                                               ; preds = %98, %46, %40
  br label %100

100:                                              ; preds = %99, %81, %65, %58
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @kfree(i8* %101)
  %103 = load %struct.key_restriction*, %struct.key_restriction** %7, align 8
  store %struct.key_restriction* %103, %struct.key_restriction** %2, align 8
  br label %104

104:                                              ; preds = %100, %36, %26, %19
  %105 = load %struct.key_restriction*, %struct.key_restriction** %2, align 8
  ret %struct.key_restriction* %105
}

declare dso_local %struct.key_restriction* @ERR_PTR(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.key_restriction* @asymmetric_restriction_alloc(i32, %struct.key_restriction*) #1

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @kstrtos32(i8*, i32, i64*) #1

declare dso_local %struct.key_restriction* @key_lookup(i64) #1

declare dso_local i64 @IS_ERR(%struct.key_restriction*) #1

declare dso_local %struct.key_restriction* @ERR_CAST(%struct.key_restriction*) #1

declare dso_local i32 @key_put(%struct.key_restriction*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
