; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_show_one_reflog_ent.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_show_one_reflog_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)*, i8*)* @show_one_reflog_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_one_reflog_ent(%struct.strbuf* %0, i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)* %1, i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %14, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %115

22:                                               ; preds = %3
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 10
  br i1 %34, label %115, label %35

35:                                               ; preds = %22
  %36 = load i8*, i8** %14, align 8
  %37 = call i64 @parse_oid_hex(i8* %36, %struct.object_id* %8, i8** %14)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %115, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %14, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 32
  br i1 %44, label %115, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %14, align 8
  %47 = call i64 @parse_oid_hex(i8* %46, %struct.object_id* %9, i8** %14)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %115, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %14, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 32
  br i1 %54, label %115, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %14, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 62)
  store i8* %57, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %115

59:                                               ; preds = %55
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 32
  br i1 %64, label %115, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = call i32 @parse_timestamp(i8* %67, i8** %11, i32 10)
  store i32 %68, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 32
  br i1 %78, label %115, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 43
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 45
  br i1 %90, label %115, label %91

91:                                               ; preds = %85, %79
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @isdigit(i8 signext %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 3
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @isdigit(i8 signext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @isdigit(i8 signext %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 5
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @isdigit(i8 signext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109, %103, %97, %91, %85, %73, %70, %65, %59, %55, %49, %45, %39, %35, %22, %3
  store i32 0, i32* %4, align 4
  br label %141

116:                                              ; preds = %109
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i32 @strtol(i8* %120, i32* null, i32 10)
  store i32 %121, i32* %13, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 6
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 9
  br i1 %126, label %127, label %130

127:                                              ; preds = %116
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 6
  store i8* %129, i8** %11, align 8
  br label %133

130:                                              ; preds = %116
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 7
  store i8* %132, i8** %11, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)*, i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)** %6, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 %134(%struct.object_id* %8, %struct.object_id* %9, i8* %135, i32 %136, i32 %137, i8* %138, i8* %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %133, %115
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_timestamp(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
