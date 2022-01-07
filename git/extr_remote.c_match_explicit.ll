; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_match_explicit.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_match_explicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i8*, i32, %struct.ref*, i32 }
%struct.refspec_item = type { i8*, i32, i64, i64 }

@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s cannot be resolved to branch\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"unable to delete '%s': remote ref does not exist\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dst refspec %s matches more than one\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"dst ref %s receives from more than one src\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, %struct.ref*, %struct.ref***, %struct.refspec_item*)* @match_explicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_explicit(%struct.ref* %0, %struct.ref* %1, %struct.ref*** %2, %struct.refspec_item* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.ref***, align 8
  %9 = alloca %struct.refspec_item*, align 8
  %10 = alloca %struct.ref*, align 8
  %11 = alloca %struct.ref*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ref* %0, %struct.ref** %6, align 8
  store %struct.ref* %1, %struct.ref** %7, align 8
  store %struct.ref*** %2, %struct.ref**** %8, align 8
  store %struct.refspec_item* %3, %struct.refspec_item** %9, align 8
  %16 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %17 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %20 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %25 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %141

29:                                               ; preds = %23
  store %struct.ref* null, %struct.ref** %11, align 8
  store %struct.ref* null, %struct.ref** %10, align 8
  %30 = load %struct.ref*, %struct.ref** %6, align 8
  %31 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %32 = call i64 @match_explicit_lhs(%struct.ref* %30, %struct.refspec_item* %31, %struct.ref** %10, i32* %12)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %141

35:                                               ; preds = %29
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %35
  %39 = load %struct.ref*, %struct.ref** %10, align 8
  %40 = getelementptr inbounds %struct.ref, %struct.ref* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @RESOLVE_REF_READING, align 4
  %43 = call i8* @resolve_ref_unsafe(i8* %41, i32 %42, i32* null, i32* %15)
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @REF_ISSYMREF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i8*, i8** %13, align 8
  %53 = call i64 @starts_with(i8* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51, %38
  %56 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.ref*, %struct.ref** %10, align 8
  %58 = getelementptr inbounds %struct.ref, %struct.ref* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @die(i32 %56, i8* %59)
  br label %61

61:                                               ; preds = %55, %51, %46
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.ref*, %struct.ref** %7, align 8
  %65 = call i32 @count_refspec_match(i8* %63, %struct.ref* %64, %struct.ref** %11)
  switch i32 %65, label %104 [
    i32 1, label %66
    i32 0, label %67
  ]

66:                                               ; preds = %62
  br label %108

67:                                               ; preds = %62
  %68 = load i8*, i8** %13, align 8
  %69 = call i64 @starts_with(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.ref***, %struct.ref**** %8, align 8
  %74 = call %struct.ref* @make_linked_ref(i8* %72, %struct.ref*** %73)
  store %struct.ref* %74, %struct.ref** %11, align 8
  br label %103

75:                                               ; preds = %67
  %76 = load %struct.ref*, %struct.ref** %10, align 8
  %77 = getelementptr inbounds %struct.ref, %struct.ref* %76, i32 0, i32 3
  %78 = call i32 @is_null_oid(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @error(i32 %81, i8* %82)
  br label %102

84:                                               ; preds = %75
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.ref*, %struct.ref** %10, align 8
  %87 = call i8* @guess_ref(i8* %85, %struct.ref* %86)
  store i8* %87, i8** %14, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = load %struct.ref***, %struct.ref**** %8, align 8
  %92 = call %struct.ref* @make_linked_ref(i8* %90, %struct.ref*** %91)
  store %struct.ref* %92, %struct.ref** %11, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @free(i8* %93)
  br label %101

95:                                               ; preds = %84
  %96 = load i8*, i8** %13, align 8
  %97 = load %struct.ref*, %struct.ref** %10, align 8
  %98 = getelementptr inbounds %struct.ref, %struct.ref* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @show_push_unqualified_ref_name_error(i8* %96, i8* %99)
  br label %101

101:                                              ; preds = %95, %89
  br label %102

102:                                              ; preds = %101, %80
  br label %103

103:                                              ; preds = %102, %71
  br label %108

104:                                              ; preds = %62
  store %struct.ref* null, %struct.ref** %11, align 8
  %105 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @error(i32 %105, i8* %106)
  br label %108

108:                                              ; preds = %104, %103, %66
  %109 = load %struct.ref*, %struct.ref** %11, align 8
  %110 = icmp ne %struct.ref* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %141

112:                                              ; preds = %108
  %113 = load %struct.ref*, %struct.ref** %11, align 8
  %114 = getelementptr inbounds %struct.ref, %struct.ref* %113, i32 0, i32 2
  %115 = load %struct.ref*, %struct.ref** %114, align 8
  %116 = icmp ne %struct.ref* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.ref*, %struct.ref** %11, align 8
  %120 = getelementptr inbounds %struct.ref, %struct.ref* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @error(i32 %118, i8* %121)
  store i32 %122, i32* %5, align 4
  br label %141

123:                                              ; preds = %112
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load %struct.ref*, %struct.ref** %10, align 8
  br label %131

128:                                              ; preds = %123
  %129 = load %struct.ref*, %struct.ref** %10, align 8
  %130 = call %struct.ref* @copy_ref(%struct.ref* %129)
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi %struct.ref* [ %127, %126 ], [ %130, %128 ]
  %133 = load %struct.ref*, %struct.ref** %11, align 8
  %134 = getelementptr inbounds %struct.ref, %struct.ref* %133, i32 0, i32 2
  store %struct.ref* %132, %struct.ref** %134, align 8
  %135 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %136 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ref*, %struct.ref** %11, align 8
  %139 = getelementptr inbounds %struct.ref, %struct.ref* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %117, %111, %34, %28
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @match_explicit_lhs(%struct.ref*, %struct.refspec_item*, %struct.ref**, i32*) #1

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @count_refspec_match(i8*, %struct.ref*, %struct.ref**) #1

declare dso_local %struct.ref* @make_linked_ref(i8*, %struct.ref***) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i8* @guess_ref(i8*, %struct.ref*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @show_push_unqualified_ref_name_error(i8*, i8*) #1

declare dso_local %struct.ref* @copy_ref(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
