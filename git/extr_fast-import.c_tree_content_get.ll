; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_tree_content_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_tree_content_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_entry = type { %struct.tree_content*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.tree_content = type { i32, %struct.tree_entry** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Empty path component found in input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_entry*, i8*, %struct.tree_entry*, i32)* @tree_content_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_content_get(%struct.tree_entry* %0, i8* %1, %struct.tree_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tree_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree_content*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tree_entry*, align 8
  store %struct.tree_entry* %0, %struct.tree_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tree_entry* %2, %struct.tree_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strchrnul(i8* %15, i8 signext 47)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25, %4
  %31 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %32 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %31, i32 0, i32 0
  %33 = load %struct.tree_content*, %struct.tree_content** %32, align 8
  %34 = icmp ne %struct.tree_content* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %37 = call i32 @load_tree(%struct.tree_entry* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  store %struct.tree_entry* %42, %struct.tree_entry** %14, align 8
  br label %112

43:                                               ; preds = %38
  %44 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %45 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %44, i32 0, i32 0
  %46 = load %struct.tree_content*, %struct.tree_content** %45, align 8
  store %struct.tree_content* %46, %struct.tree_content** %10, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %108, %43
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.tree_content*, %struct.tree_content** %10, align 8
  %50 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  %54 = load %struct.tree_content*, %struct.tree_content** %10, align 8
  %55 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %54, i32 0, i32 1
  %56 = load %struct.tree_entry**, %struct.tree_entry*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %56, i64 %58
  %60 = load %struct.tree_entry*, %struct.tree_entry** %59, align 8
  store %struct.tree_entry* %60, %struct.tree_entry** %14, align 8
  %61 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %62 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %53
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %71 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @fspathncmp(i8* %69, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %107, label %78

78:                                               ; preds = %68
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %112

83:                                               ; preds = %78
  %84 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %85 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @S_ISDIR(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %139

93:                                               ; preds = %83
  %94 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %95 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %94, i32 0, i32 0
  %96 = load %struct.tree_content*, %struct.tree_content** %95, align 8
  %97 = icmp ne %struct.tree_content* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %100 = call i32 @load_tree(%struct.tree_entry* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %106 = call i32 @tree_content_get(%struct.tree_entry* %102, i8* %104, %struct.tree_entry* %105, i32 0)
  store i32 %106, i32* %5, align 4
  br label %139

107:                                              ; preds = %68, %53
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %47

111:                                              ; preds = %47
  store i32 0, i32* %5, align 4
  br label %139

112:                                              ; preds = %82, %41
  %113 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %114 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %115 = call i32 @memcpy(%struct.tree_entry* %113, %struct.tree_entry* %114, i32 24)
  %116 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %117 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %116, i32 0, i32 0
  %118 = load %struct.tree_content*, %struct.tree_content** %117, align 8
  %119 = icmp ne %struct.tree_content* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %112
  %121 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %122 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i64 @is_null_oid(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %120
  %129 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %130 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %129, i32 0, i32 0
  %131 = load %struct.tree_content*, %struct.tree_content** %130, align 8
  %132 = call %struct.tree_content* @dup_tree_content(%struct.tree_content* %131)
  %133 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %134 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %133, i32 0, i32 0
  store %struct.tree_content* %132, %struct.tree_content** %134, align 8
  br label %138

135:                                              ; preds = %120, %112
  %136 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %137 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %136, i32 0, i32 0
  store %struct.tree_content* null, %struct.tree_content** %137, align 8
  br label %138

138:                                              ; preds = %135, %128
  store i32 1, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %111, %101, %92
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @load_tree(%struct.tree_entry*) #1

declare dso_local i32 @fspathncmp(i8*, i32, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @memcpy(%struct.tree_entry*, %struct.tree_entry*, i32) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local %struct.tree_content* @dup_tree_content(%struct.tree_content*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
