; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_parse_info_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_parse_info_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ref = type { %struct.ref*, i32 }
%struct.discovery = type { i8*, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"%sinfo/refs not valid: is this a git repository?\00", align 1
@url = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.discovery*)* @parse_info_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @parse_info_refs(%struct.discovery* %0) #0 {
  %2 = alloca %struct.discovery*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.ref*, align 8
  store %struct.discovery* %0, %struct.discovery** %2, align 8
  store i32 0, i32* %7, align 4
  store %struct.ref* null, %struct.ref** %8, align 8
  store %struct.ref* null, %struct.ref** %9, align 8
  store %struct.ref* null, %struct.ref** %10, align 8
  %11 = load %struct.discovery*, %struct.discovery** %2, align 8
  %12 = getelementptr inbounds %struct.discovery, %struct.discovery* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %92, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.discovery*, %struct.discovery** %2, align 8
  %18 = getelementptr inbounds %struct.discovery, %struct.discovery* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %92

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 4
  %64 = call i32 @transport_anonymize_url(i32 %63)
  %65 = call i32 @die(i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %50
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call %struct.ref* @alloc_ref(i8* %73)
  store %struct.ref* %74, %struct.ref** %9, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.ref*, %struct.ref** %9, align 8
  %77 = getelementptr inbounds %struct.ref, %struct.ref* %76, i32 0, i32 1
  %78 = call i32 @get_oid_hex(i8* %75, i32* %77)
  %79 = load %struct.ref*, %struct.ref** %8, align 8
  %80 = icmp ne %struct.ref* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %66
  %82 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %82, %struct.ref** %8, align 8
  br label %83

83:                                               ; preds = %81, %66
  %84 = load %struct.ref*, %struct.ref** %10, align 8
  %85 = icmp ne %struct.ref* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.ref*, %struct.ref** %9, align 8
  %88 = load %struct.ref*, %struct.ref** %10, align 8
  %89 = getelementptr inbounds %struct.ref, %struct.ref* %88, i32 0, i32 0
  store %struct.ref* %87, %struct.ref** %89, align 8
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %91, %struct.ref** %10, align 8
  store i8* null, i8** %4, align 8
  br label %92

92:                                               ; preds = %90, %42
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %15

95:                                               ; preds = %15
  %96 = call %struct.ref* @alloc_ref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ref* %96, %struct.ref** %9, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @url, i32 0, i32 0), align 4
  %98 = load %struct.ref*, %struct.ref** %9, align 8
  %99 = call i32 @http_fetch_ref(i32 %97, %struct.ref* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %95
  %102 = load %struct.ref*, %struct.ref** %9, align 8
  %103 = load %struct.ref*, %struct.ref** %8, align 8
  %104 = call i32 @resolve_remote_symref(%struct.ref* %102, %struct.ref* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.ref*, %struct.ref** %8, align 8
  %108 = load %struct.ref*, %struct.ref** %9, align 8
  %109 = getelementptr inbounds %struct.ref, %struct.ref* %108, i32 0, i32 0
  store %struct.ref* %107, %struct.ref** %109, align 8
  %110 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %110, %struct.ref** %8, align 8
  br label %114

111:                                              ; preds = %101, %95
  %112 = load %struct.ref*, %struct.ref** %9, align 8
  %113 = call i32 @free(%struct.ref* %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.ref*, %struct.ref** %8, align 8
  ret %struct.ref* %115
}

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @transport_anonymize_url(i32) #1

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i32 @get_oid_hex(i8*, i32*) #1

declare dso_local i32 @http_fetch_ref(i32, %struct.ref*) #1

declare dso_local i32 @resolve_remote_symref(%struct.ref*, %struct.ref*) #1

declare dso_local i32 @free(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
