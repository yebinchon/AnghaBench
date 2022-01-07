; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_match_preparse.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_match_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_match_data = type { i8*, i32 (%struct.key*, %struct.key_match_data*)*, i32, %struct.asymmetric_key_id* }
%struct.key = type opaque
%struct.asymmetric_key_id = type { i32 }
%struct.key.0 = type opaque
%struct.key.1 = type opaque
%struct.key.2 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@KEYRING_SEARCH_LOOKUP_ITERATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_match_data*)* @asymmetric_key_match_preparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asymmetric_key_match_preparse(%struct.key_match_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_match_data*, align 8
  %4 = alloca %struct.asymmetric_key_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.key.0*, %struct.key_match_data*)*, align 8
  store %struct.key_match_data* %0, %struct.key_match_data** %3, align 8
  %8 = load %struct.key_match_data*, %struct.key_match_data** %3, align 8
  %9 = getelementptr inbounds %struct.key_match_data, %struct.key_match_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  store i32 (%struct.key.0*, %struct.key_match_data*)* bitcast (i32 (%struct.key.1*, %struct.key_match_data*)* @asymmetric_key_cmp to i32 (%struct.key.0*, %struct.key_match_data*)*), i32 (%struct.key.0*, %struct.key_match_data*)** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 105
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 100
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 58
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8* %40, i8** %6, align 8
  store i32 (%struct.key.0*, %struct.key_match_data*)* bitcast (i32 (%struct.key.2*, %struct.key_match_data*)* @asymmetric_key_cmp_partial to i32 (%struct.key.0*, %struct.key_match_data*)*), i32 (%struct.key.0*, %struct.key_match_data*)** %7, align 8
  br label %64

41:                                               ; preds = %32, %26, %20
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 101
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 120
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 58
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %61, i8** %6, align 8
  br label %63

62:                                               ; preds = %53, %47, %41
  br label %84

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i8*, i8** %6, align 8
  %66 = call %struct.asymmetric_key_id* @asymmetric_key_hex_to_key_id(i8* %65)
  store %struct.asymmetric_key_id* %66, %struct.asymmetric_key_id** %4, align 8
  %67 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %68 = call i64 @IS_ERR(%struct.asymmetric_key_id* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %72 = call i32 @PTR_ERR(%struct.asymmetric_key_id* %71)
  store i32 %72, i32* %2, align 4
  br label %85

73:                                               ; preds = %64
  %74 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %75 = load %struct.key_match_data*, %struct.key_match_data** %3, align 8
  %76 = getelementptr inbounds %struct.key_match_data, %struct.key_match_data* %75, i32 0, i32 3
  store %struct.asymmetric_key_id* %74, %struct.asymmetric_key_id** %76, align 8
  %77 = load i32 (%struct.key.0*, %struct.key_match_data*)*, i32 (%struct.key.0*, %struct.key_match_data*)** %7, align 8
  %78 = bitcast i32 (%struct.key.0*, %struct.key_match_data*)* %77 to i32 (%struct.key*, %struct.key_match_data*)*
  %79 = load %struct.key_match_data*, %struct.key_match_data** %3, align 8
  %80 = getelementptr inbounds %struct.key_match_data, %struct.key_match_data* %79, i32 0, i32 1
  store i32 (%struct.key*, %struct.key_match_data*)* %78, i32 (%struct.key*, %struct.key_match_data*)** %80, align 8
  %81 = load i32, i32* @KEYRING_SEARCH_LOOKUP_ITERATE, align 4
  %82 = load %struct.key_match_data*, %struct.key_match_data** %3, align 8
  %83 = getelementptr inbounds %struct.key_match_data, %struct.key_match_data* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %2, align 4
  br label %85

84:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %73, %70, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @asymmetric_key_cmp(%struct.key.1*, %struct.key_match_data*) #1

declare dso_local i32 @asymmetric_key_cmp_partial(%struct.key.2*, %struct.key_match_data*) #1

declare dso_local %struct.asymmetric_key_id* @asymmetric_key_hex_to_key_id(i8*) #1

declare dso_local i64 @IS_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i32 @PTR_ERR(%struct.asymmetric_key_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
