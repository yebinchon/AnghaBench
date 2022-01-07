; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@MISSING_OBJECT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.object_id*, i32)* @get_oid_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_oid_1(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %23, i8** %14, align 8
  br label %24

24:                                               ; preds = %47, %5
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ule i8* %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sle i32 48, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %15, align 4
  %36 = icmp sle i32 %35, 57
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %47

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 126
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %42, 94
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %41
  br label %50

47:                                               ; preds = %37
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %14, align 8
  br label %24

50:                                               ; preds = %46, %24
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %126

53:                                               ; preds = %50
  store i32 0, i32* %16, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %17, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %14, align 8
  br label %62

62:                                               ; preds = %89, %53
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = icmp ult i8* %63, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %62
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %14, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @unsigned_mult_overflows(i32 %75, i32 10)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %79, i32* %6, align 4
  br label %165

80:                                               ; preds = %69
  %81 = load i32, i32* %16, align 4
  %82 = mul i32 %81, 10
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i64 @unsigned_add_overflows(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %88, i32* %6, align 4
  br label %165

89:                                               ; preds = %80
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %16, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %16, align 4
  br label %62

93:                                               ; preds = %62
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %16, align 4
  br label %109

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @INT_MAX, align 4
  %105 = icmp ugt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %107, i32* %6, align 4
  br label %165

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %101
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 94
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.repository*, %struct.repository** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.object_id*, %struct.object_id** %10, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @get_parent(%struct.repository* %113, i8* %114, i32 %115, %struct.object_id* %116, i32 %117)
  store i32 %118, i32* %6, align 4
  br label %165

119:                                              ; preds = %109
  %120 = load %struct.repository*, %struct.repository** %7, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.object_id*, %struct.object_id** %10, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @get_nth_ancestor(%struct.repository* %120, i8* %121, i32 %122, %struct.object_id* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  br label %165

126:                                              ; preds = %50
  %127 = load %struct.repository*, %struct.repository** %7, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.object_id*, %struct.object_id** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @peel_onion(%struct.repository* %127, i8* %128, i32 %129, %struct.object_id* %130, i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* @FOUND, align 4
  store i32 %136, i32* %6, align 4
  br label %165

137:                                              ; preds = %126
  %138 = load %struct.repository*, %struct.repository** %7, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.object_id*, %struct.object_id** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @get_oid_basic(%struct.repository* %138, i8* %139, i32 %140, %struct.object_id* %141, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = load i32, i32* @FOUND, align 4
  store i32 %147, i32* %6, align 4
  br label %165

148:                                              ; preds = %137
  %149 = load %struct.repository*, %struct.repository** %7, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.object_id*, %struct.object_id** %10, align 8
  %153 = call i32 @get_describe_name(%struct.repository* %149, i8* %150, i32 %151, %struct.object_id* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* @FOUND, align 4
  store i32 %157, i32* %6, align 4
  br label %165

158:                                              ; preds = %148
  %159 = load %struct.repository*, %struct.repository** %7, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.object_id*, %struct.object_id** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @get_short_oid(%struct.repository* %159, i8* %160, i32 %161, %struct.object_id* %162, i32 %163)
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %158, %156, %146, %135, %119, %112, %106, %87, %78
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i64 @unsigned_mult_overflows(i32, i32) #1

declare dso_local i64 @unsigned_add_overflows(i32, i32) #1

declare dso_local i32 @get_parent(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

declare dso_local i32 @get_nth_ancestor(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

declare dso_local i32 @peel_onion(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

declare dso_local i32 @get_oid_basic(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

declare dso_local i32 @get_describe_name(%struct.repository*, i8*, i32, %struct.object_id*) #1

declare dso_local i32 @get_short_oid(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
