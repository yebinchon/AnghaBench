; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_format_note.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_format_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i8*, i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }

@format_note.utf8 = internal constant [6 x i8] c"utf-8\00", align 1
@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 8
@OBJ_BLOB = common dso_local global i32 0, align 4
@GIT_NOTES_DEFAULT_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\0ANotes:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"notes/\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0ANotes (%s):\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.notes_tree*, %struct.object_id*, %struct.strbuf*, i8*, i32)* @format_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_note(%struct.notes_tree* %0, %struct.object_id* %1, %struct.strbuf* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.notes_tree*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %20 = icmp ne %struct.notes_tree* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %6, align 8
  br label %22

22:                                               ; preds = %21, %5
  %23 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %24 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %29 = call i32 @init_notes(%struct.notes_tree* %28, i32* null, i32* null, i32 0)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %32 = load %struct.object_id*, %struct.object_id** %7, align 8
  %33 = call %struct.object_id* @get_note(%struct.notes_tree* %31, %struct.object_id* %32)
  store %struct.object_id* %33, %struct.object_id** %11, align 8
  %34 = load %struct.object_id*, %struct.object_id** %11, align 8
  %35 = icmp ne %struct.object_id* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %158

37:                                               ; preds = %30
  %38 = load %struct.object_id*, %struct.object_id** %11, align 8
  %39 = call i8* @read_object_file(%struct.object_id* %38, i32* %16, i64* %15)
  store i8* %39, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @OBJ_BLOB, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @free(i8* %46)
  br label %158

48:                                               ; preds = %41
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @is_encoding_utf8(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i8* @reencode_string(i8* %61, i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @format_note.utf8, i64 0, i64 0))
  store i8* %63, i8** %17, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %17, align 8
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %56, %51, %48
  %74 = load i64, i64* %15, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i8*, i8** %12, align 8
  %78 = load i64, i64* %15, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i64, i64* %15, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %15, align 8
  br label %87

87:                                               ; preds = %84, %76, %73
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %123, label %90

90:                                               ; preds = %87
  %91 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %92 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %18, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i8*, i8** %18, align 8
  %98 = load i32, i32* @GIT_NOTES_DEFAULT_REF, align 4
  %99 = call i32 @strcmp(i8* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96, %90
  %102 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %103 = call i32 @strbuf_addstr(%struct.strbuf* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %122

104:                                              ; preds = %96
  %105 = load i8*, i8** %18, align 8
  %106 = call i64 @starts_with(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i8*, i8** %18, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  store i8* %110, i8** %18, align 8
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i8*, i8** %18, align 8
  %113 = call i64 @starts_with(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i8*, i8** %18, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  store i8* %117, i8** %18, align 8
  br label %118

118:                                              ; preds = %115, %111
  %119 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @strbuf_addf(%struct.strbuf* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %118, %101
  br label %123

123:                                              ; preds = %122, %87
  %124 = load i8*, i8** %12, align 8
  store i8* %124, i8** %13, align 8
  br label %125

125:                                              ; preds = %150, %123
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i64, i64* %15, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = icmp ult i8* %126, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load i8*, i8** %13, align 8
  %133 = call i8* @strchrnul(i8* %132, i8 signext 10)
  %134 = load i8*, i8** %13, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  store i64 %137, i64* %14, align 8
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %131
  %141 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %142 = call i32 @strbuf_addstr(%struct.strbuf* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %131
  %144 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i32 @strbuf_add(%struct.strbuf* %144, i8* %145, i64 %146)
  %148 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %149 = call i32 @strbuf_addch(%struct.strbuf* %148, i8 signext 10)
  br label %150

150:                                              ; preds = %143
  %151 = load i64, i64* %14, align 8
  %152 = add i64 %151, 1
  %153 = load i8*, i8** %13, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 %152
  store i8* %154, i8** %13, align 8
  br label %125

155:                                              ; preds = %125
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 @free(i8* %156)
  br label %158

158:                                              ; preds = %155, %45, %36
  ret void
}

declare dso_local i32 @init_notes(%struct.notes_tree*, i32*, i32*, i32) #1

declare dso_local %struct.object_id* @get_note(%struct.notes_tree*, %struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @is_encoding_utf8(i8*) #1

declare dso_local i8* @reencode_string(i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
