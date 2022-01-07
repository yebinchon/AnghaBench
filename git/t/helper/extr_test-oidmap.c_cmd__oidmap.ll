; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-oidmap.c_cmd__oidmap.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-oidmap.c_cmd__oidmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32* }
%struct.oidmap = type { i32 }
%struct.test_entry = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.oidmap_iter = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@OIDMAP_INIT = common dso_local global %struct.oidmap zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@DELIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown oid: %s\0A\00", align 1
@name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"iterate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Unknown command %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__oidmap(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.oidmap, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.test_entry*, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca %struct.oidmap_iter, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = bitcast %struct.oidmap* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.oidmap* @OIDMAP_INIT to i8*), i64 4, i1 false)
  %15 = call i32 (...) @setup_git_directory()
  %16 = call i32 @oidmap_init(%struct.oidmap* %6, i32 0)
  br label %17

17:                                               ; preds = %162, %120, %94, %57, %34, %2
  %18 = load i32, i32* @stdin, align 4
  %19 = call i64 @strbuf_getline(%struct.strbuf* %5, i32 %18)
  %20 = load i64, i64* @EOF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %163

22:                                               ; preds = %17
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @DELIM, align 4
  %26 = call i8* @strtok(i32* %24, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %22
  br label %17

35:                                               ; preds = %29
  %36 = load i32, i32* @DELIM, align 4
  %37 = call i8* @strtok(i32* null, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @DELIM, align 4
  %42 = call i8* @strtok(i32* null, i32 %41)
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %83, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @get_oid(i8* %54, %struct.object_id* %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %17

60:                                               ; preds = %53
  %61 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %62 = load i32, i32* @name, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @FLEX_ALLOC_STR(%struct.test_entry* %61, i32 %62, i8* %63)
  %65 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %66 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @oidcpy(i32* %67, %struct.object_id* %11)
  %69 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %70 = call %struct.test_entry* @oidmap_put(%struct.oidmap* %6, %struct.test_entry* %69)
  store %struct.test_entry* %70, %struct.test_entry** %10, align 8
  %71 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %72 = icmp ne %struct.test_entry* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %75 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  br label %78

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i8* [ %76, %73 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %77 ]
  %80 = call i32 @puts(i8* %79)
  %81 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %82 = call i32 @free(%struct.test_entry* %81)
  br label %162

83:                                               ; preds = %50, %47, %43
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = call i64 @get_oid(i8* %91, %struct.object_id* %11)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %17

97:                                               ; preds = %90
  %98 = call %struct.test_entry* @oidmap_get(%struct.oidmap* %6, %struct.object_id* %11)
  store %struct.test_entry* %98, %struct.test_entry** %10, align 8
  %99 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %100 = icmp ne %struct.test_entry* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %103 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  br label %106

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i8* [ %104, %101 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %105 ]
  %108 = call i32 @puts(i8* %107)
  br label %161

109:                                              ; preds = %87, %83
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %8, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %137

116:                                              ; preds = %113
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @get_oid(i8* %117, %struct.object_id* %11)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  br label %17

123:                                              ; preds = %116
  %124 = call %struct.test_entry* @oidmap_remove(%struct.oidmap* %6, %struct.object_id* %11)
  store %struct.test_entry* %124, %struct.test_entry** %10, align 8
  %125 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %126 = icmp ne %struct.test_entry* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %129 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  br label %132

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i8* [ %130, %127 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %131 ]
  %134 = call i32 @puts(i8* %133)
  %135 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %136 = call i32 @free(%struct.test_entry* %135)
  br label %160

137:                                              ; preds = %113, %109
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %137
  %142 = call i32 @oidmap_iter_init(%struct.oidmap* %6, %struct.oidmap_iter* %12)
  br label %143

143:                                              ; preds = %146, %141
  %144 = call %struct.test_entry* @oidmap_iter_next(%struct.oidmap_iter* %12)
  store %struct.test_entry* %144, %struct.test_entry** %10, align 8
  %145 = icmp ne %struct.test_entry* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %148 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i8* @oid_to_hex(i32* %149)
  %151 = load %struct.test_entry*, %struct.test_entry** %10, align 8
  %152 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %150, i8* %153)
  br label %143

155:                                              ; preds = %143
  br label %159

156:                                              ; preds = %137
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %156, %155
  br label %160

160:                                              ; preds = %159, %132
  br label %161

161:                                              ; preds = %160, %106
  br label %162

162:                                              ; preds = %161, %78
  br label %17

163:                                              ; preds = %17
  %164 = call i32 @strbuf_release(%struct.strbuf* %5)
  %165 = call i32 @oidmap_free(%struct.oidmap* %6, i32 1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_git_directory(...) #2

declare dso_local i32 @oidmap_init(%struct.oidmap*, i32) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32) #2

declare dso_local i8* @strtok(i32*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @FLEX_ALLOC_STR(%struct.test_entry*, i32, i8*) #2

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #2

declare dso_local %struct.test_entry* @oidmap_put(%struct.oidmap*, %struct.test_entry*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @free(%struct.test_entry*) #2

declare dso_local %struct.test_entry* @oidmap_get(%struct.oidmap*, %struct.object_id*) #2

declare dso_local %struct.test_entry* @oidmap_remove(%struct.oidmap*, %struct.object_id*) #2

declare dso_local i32 @oidmap_iter_init(%struct.oidmap*, %struct.oidmap_iter*) #2

declare dso_local %struct.test_entry* @oidmap_iter_next(%struct.oidmap_iter*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @oidmap_free(%struct.oidmap*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
