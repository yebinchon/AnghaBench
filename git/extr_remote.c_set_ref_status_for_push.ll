; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_set_ref_status_for_push.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_set_ref_status_for_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i64, %struct.ref* }
%struct.TYPE_2__ = type { i32 }

@REF_STATUS_UPTODATE = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_STALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@REF_STATUS_REJECT_ALREADY_EXISTS = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_FETCH_FIRST = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_NEEDS_FORCE = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_NONFASTFORWARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ref_status_for_push(%struct.ref* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ref* %0, %struct.ref** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %10, %struct.ref** %7, align 8
  br label %11

11:                                               ; preds = %149, %3
  %12 = load %struct.ref*, %struct.ref** %7, align 8
  %13 = icmp ne %struct.ref* %12, null
  br i1 %13, label %14, label %153

14:                                               ; preds = %11
  %15 = load %struct.ref*, %struct.ref** %7, align 8
  %16 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ true, %14 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.ref*, %struct.ref** %7, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.ref*, %struct.ref** %7, align 8
  %31 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 3
  %32 = load %struct.ref*, %struct.ref** %7, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @oidcpy(i32* %31, i32* %35)
  br label %42

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %149

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.ref*, %struct.ref** %7, align 8
  %44 = getelementptr inbounds %struct.ref, %struct.ref* %43, i32 0, i32 3
  %45 = call i64 @is_null_oid(i32* %44)
  %46 = load %struct.ref*, %struct.ref** %7, align 8
  %47 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 5
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ref*, %struct.ref** %7, align 8
  %49 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %42
  %53 = load %struct.ref*, %struct.ref** %7, align 8
  %54 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 2
  %55 = load %struct.ref*, %struct.ref** %7, align 8
  %56 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 3
  %57 = call i64 @oideq(i32* %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @REF_STATUS_UPTODATE, align 4
  %61 = load %struct.ref*, %struct.ref** %7, align 8
  %62 = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %149

63:                                               ; preds = %52, %42
  %64 = load %struct.ref*, %struct.ref** %7, align 8
  %65 = getelementptr inbounds %struct.ref, %struct.ref* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.ref*, %struct.ref** %7, align 8
  %70 = getelementptr inbounds %struct.ref, %struct.ref* %69, i32 0, i32 2
  %71 = load %struct.ref*, %struct.ref** %7, align 8
  %72 = getelementptr inbounds %struct.ref, %struct.ref* %71, i32 0, i32 6
  %73 = call i64 @oideq(i32* %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @REF_STATUS_REJECT_STALE, align 4
  store i32 %76, i32* %9, align 4
  br label %78

77:                                               ; preds = %68
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %75
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %134, label %82

82:                                               ; preds = %79
  %83 = load %struct.ref*, %struct.ref** %7, align 8
  %84 = getelementptr inbounds %struct.ref, %struct.ref* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %134, label %87

87:                                               ; preds = %82
  %88 = load %struct.ref*, %struct.ref** %7, align 8
  %89 = getelementptr inbounds %struct.ref, %struct.ref* %88, i32 0, i32 2
  %90 = call i64 @is_null_oid(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %134, label %92

92:                                               ; preds = %87
  %93 = load %struct.ref*, %struct.ref** %7, align 8
  %94 = getelementptr inbounds %struct.ref, %struct.ref* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @starts_with(i32 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @REF_STATUS_REJECT_ALREADY_EXISTS, align 4
  store i32 %99, i32* %9, align 4
  br label %133

100:                                              ; preds = %92
  %101 = load %struct.ref*, %struct.ref** %7, align 8
  %102 = getelementptr inbounds %struct.ref, %struct.ref* %101, i32 0, i32 2
  %103 = call i32 @has_object_file(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @REF_STATUS_REJECT_FETCH_FIRST, align 4
  store i32 %106, i32* %9, align 4
  br label %132

107:                                              ; preds = %100
  %108 = load i32, i32* @the_repository, align 4
  %109 = load %struct.ref*, %struct.ref** %7, align 8
  %110 = getelementptr inbounds %struct.ref, %struct.ref* %109, i32 0, i32 2
  %111 = call i32 @lookup_commit_reference_gently(i32 %108, i32* %110, i32 1)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @the_repository, align 4
  %115 = load %struct.ref*, %struct.ref** %7, align 8
  %116 = getelementptr inbounds %struct.ref, %struct.ref* %115, i32 0, i32 3
  %117 = call i32 @lookup_commit_reference_gently(i32 %114, i32* %116, i32 1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113, %107
  %120 = load i32, i32* @REF_STATUS_REJECT_NEEDS_FORCE, align 4
  store i32 %120, i32* %9, align 4
  br label %131

121:                                              ; preds = %113
  %122 = load %struct.ref*, %struct.ref** %7, align 8
  %123 = getelementptr inbounds %struct.ref, %struct.ref* %122, i32 0, i32 3
  %124 = load %struct.ref*, %struct.ref** %7, align 8
  %125 = getelementptr inbounds %struct.ref, %struct.ref* %124, i32 0, i32 2
  %126 = call i32 @ref_newer(i32* %123, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* @REF_STATUS_REJECT_NONFASTFORWARD, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %128, %121
  br label %131

131:                                              ; preds = %130, %119
  br label %132

132:                                              ; preds = %131, %105
  br label %133

133:                                              ; preds = %132, %98
  br label %134

134:                                              ; preds = %133, %87, %82, %79
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ref*, %struct.ref** %7, align 8
  %140 = getelementptr inbounds %struct.ref, %struct.ref* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %148

141:                                              ; preds = %134
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.ref*, %struct.ref** %7, align 8
  %146 = getelementptr inbounds %struct.ref, %struct.ref* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %137
  br label %149

149:                                              ; preds = %148, %59, %40
  %150 = load %struct.ref*, %struct.ref** %7, align 8
  %151 = getelementptr inbounds %struct.ref, %struct.ref* %150, i32 0, i32 10
  %152 = load %struct.ref*, %struct.ref** %151, align 8
  store %struct.ref* %152, %struct.ref** %7, align 8
  br label %11

153:                                              ; preds = %11
  ret void
}

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @starts_with(i32, i8*) #1

declare dso_local i32 @has_object_file(i32*) #1

declare dso_local i32 @lookup_commit_reference_gently(i32, i32*, i32) #1

declare dso_local i32 @ref_newer(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
