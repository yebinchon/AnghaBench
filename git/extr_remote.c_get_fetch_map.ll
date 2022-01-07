; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_get_fetch_map.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_get_fetch_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32, %struct.ref*, %struct.ref*, i32, i32 }
%struct.refspec_item = type { i8*, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't find remote ref %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"* Ignoring funny ref '%s' locally\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fetch_map(%struct.ref* %0, %struct.refspec_item* %1, %struct.ref*** %2, i32 %3) #0 {
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.refspec_item*, align 8
  %7 = alloca %struct.ref***, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.ref**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %5, align 8
  store %struct.refspec_item* %1, %struct.refspec_item** %6, align 8
  store %struct.ref*** %2, %struct.ref**** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %14 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.ref*, %struct.ref** %5, align 8
  %19 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %20 = call %struct.ref* @get_expanded_map(%struct.ref* %18, %struct.refspec_item* %19)
  store %struct.ref* %20, %struct.ref** %9, align 8
  br label %89

21:                                               ; preds = %4
  %22 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %23 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %31 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %33 ]
  store i8* %35, i8** %11, align 8
  %36 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %37 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i8*, i8** %11, align 8
  %42 = call %struct.ref* @alloc_ref(i8* %41)
  store %struct.ref* %42, %struct.ref** %9, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.ref*, %struct.ref** %9, align 8
  %45 = getelementptr inbounds %struct.ref, %struct.ref* %44, i32 0, i32 5
  %46 = call i32 @get_oid_hex(i8* %43, i32* %45)
  %47 = load %struct.ref*, %struct.ref** %9, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %53

49:                                               ; preds = %34
  %50 = load %struct.ref*, %struct.ref** %5, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call %struct.ref* @get_remote_ref(%struct.ref* %50, i8* %51)
  store %struct.ref* %52, %struct.ref** %9, align 8
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load %struct.ref*, %struct.ref** %9, align 8
  %58 = icmp ne %struct.ref* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @die(i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %59, %56, %53
  %64 = load %struct.ref*, %struct.ref** %9, align 8
  %65 = icmp ne %struct.ref* %64, null
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %68 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.ref* @get_local_ref(i32 %69)
  %71 = load %struct.ref*, %struct.ref** %9, align 8
  %72 = getelementptr inbounds %struct.ref, %struct.ref* %71, i32 0, i32 3
  store %struct.ref* %70, %struct.ref** %72, align 8
  %73 = load %struct.ref*, %struct.ref** %9, align 8
  %74 = getelementptr inbounds %struct.ref, %struct.ref* %73, i32 0, i32 3
  %75 = load %struct.ref*, %struct.ref** %74, align 8
  %76 = icmp ne %struct.ref* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %79 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.ref*, %struct.ref** %9, align 8
  %84 = getelementptr inbounds %struct.ref, %struct.ref* %83, i32 0, i32 3
  %85 = load %struct.ref*, %struct.ref** %84, align 8
  %86 = getelementptr inbounds %struct.ref, %struct.ref* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %77, %66
  br label %88

88:                                               ; preds = %87, %63
  br label %89

89:                                               ; preds = %88, %17
  store %struct.ref** %9, %struct.ref*** %10, align 8
  br label %90

90:                                               ; preds = %141, %118, %89
  %91 = load %struct.ref**, %struct.ref*** %10, align 8
  %92 = load %struct.ref*, %struct.ref** %91, align 8
  %93 = icmp ne %struct.ref* %92, null
  br i1 %93, label %94, label %145

94:                                               ; preds = %90
  %95 = load %struct.ref**, %struct.ref*** %10, align 8
  %96 = load %struct.ref*, %struct.ref** %95, align 8
  %97 = getelementptr inbounds %struct.ref, %struct.ref* %96, i32 0, i32 3
  %98 = load %struct.ref*, %struct.ref** %97, align 8
  %99 = icmp ne %struct.ref* %98, null
  br i1 %99, label %100, label %141

100:                                              ; preds = %94
  %101 = load %struct.ref**, %struct.ref*** %10, align 8
  %102 = load %struct.ref*, %struct.ref** %101, align 8
  %103 = getelementptr inbounds %struct.ref, %struct.ref* %102, i32 0, i32 3
  %104 = load %struct.ref*, %struct.ref** %103, align 8
  %105 = getelementptr inbounds %struct.ref, %struct.ref* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @starts_with(i32 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load %struct.ref**, %struct.ref*** %10, align 8
  %111 = load %struct.ref*, %struct.ref** %110, align 8
  %112 = getelementptr inbounds %struct.ref, %struct.ref* %111, i32 0, i32 3
  %113 = load %struct.ref*, %struct.ref** %112, align 8
  %114 = getelementptr inbounds %struct.ref, %struct.ref* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @check_refname_format(i32 %115, i32 0)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %109, %100
  %119 = load %struct.ref**, %struct.ref*** %10, align 8
  %120 = load %struct.ref*, %struct.ref** %119, align 8
  store %struct.ref* %120, %struct.ref** %12, align 8
  %121 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.ref**, %struct.ref*** %10, align 8
  %123 = load %struct.ref*, %struct.ref** %122, align 8
  %124 = getelementptr inbounds %struct.ref, %struct.ref* %123, i32 0, i32 3
  %125 = load %struct.ref*, %struct.ref** %124, align 8
  %126 = getelementptr inbounds %struct.ref, %struct.ref* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @error(i32 %121, i32 %127)
  %129 = load %struct.ref**, %struct.ref*** %10, align 8
  %130 = load %struct.ref*, %struct.ref** %129, align 8
  %131 = getelementptr inbounds %struct.ref, %struct.ref* %130, i32 0, i32 2
  %132 = load %struct.ref*, %struct.ref** %131, align 8
  %133 = load %struct.ref**, %struct.ref*** %10, align 8
  store %struct.ref* %132, %struct.ref** %133, align 8
  %134 = load %struct.ref*, %struct.ref** %12, align 8
  %135 = getelementptr inbounds %struct.ref, %struct.ref* %134, i32 0, i32 3
  %136 = load %struct.ref*, %struct.ref** %135, align 8
  %137 = call i32 @free(%struct.ref* %136)
  %138 = load %struct.ref*, %struct.ref** %12, align 8
  %139 = call i32 @free(%struct.ref* %138)
  br label %90

140:                                              ; preds = %109
  br label %141

141:                                              ; preds = %140, %94
  %142 = load %struct.ref**, %struct.ref*** %10, align 8
  %143 = load %struct.ref*, %struct.ref** %142, align 8
  %144 = getelementptr inbounds %struct.ref, %struct.ref* %143, i32 0, i32 2
  store %struct.ref** %144, %struct.ref*** %10, align 8
  br label %90

145:                                              ; preds = %90
  %146 = load %struct.ref*, %struct.ref** %9, align 8
  %147 = icmp ne %struct.ref* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.ref*, %struct.ref** %9, align 8
  %150 = load %struct.ref***, %struct.ref**** %7, align 8
  %151 = call i32 @tail_link_ref(%struct.ref* %149, %struct.ref*** %150)
  br label %152

152:                                              ; preds = %148, %145
  ret i32 0
}

declare dso_local %struct.ref* @get_expanded_map(%struct.ref*, %struct.refspec_item*) #1

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i32 @get_oid_hex(i8*, i32*) #1

declare dso_local %struct.ref* @get_remote_ref(%struct.ref*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.ref* @get_local_ref(i32) #1

declare dso_local i32 @starts_with(i32, i8*) #1

declare dso_local i64 @check_refname_format(i32, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @free(%struct.ref*) #1

declare dso_local i32 @tail_link_ref(%struct.ref*, %struct.ref***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
