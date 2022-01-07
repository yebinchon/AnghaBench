; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog_helpers.c_cl_reflog_check_entry_.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog_helpers.c_cl_reflog_check_entry_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Reflog has no such entry\00", align 1
@GIT_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\09Old OID: \22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\22 != \22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09New OID: \22\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\09Email: \22%s\22 != \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\09Message: \22%s\22 != \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Reflog entry mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_reflog_check_entry_(i32* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %27, i32* %21, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @git_reflog_read(i32** %19, i32* %28, i8* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %19, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32* @git_reflog_entry_byindex(i32* %32, i64 %33)
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %9
  %38 = load i8*, i8** %17, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @clar__fail(i8* %38, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* null, i32 1)
  br label %41

41:                                               ; preds = %37, %9
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %89

44:                                               ; preds = %41
  store i32* null, i32** %22, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @git_revparse_single(i32** %22, i32* %45, i8* %46)
  %48 = load i64, i64* @GIT_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load i32*, i32** %22, align 8
  %52 = call i32* @git_object_id(i32* %51)
  %53 = load i32*, i32** %20, align 8
  %54 = call i32* @git_reflog_entry_id_old(i32* %53)
  %55 = call i64 @git_oid_cmp(i32* %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32*, i32** %22, align 8
  %59 = call i32* @git_object_id(i32* %58)
  %60 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %59)
  %61 = load i32*, i32** %20, align 8
  %62 = call i32* @git_reflog_entry_id_old(i32* %61)
  %63 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %62)
  %64 = call i32 @git_buf_puts(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %57, %50
  %66 = load i32*, i32** %22, align 8
  %67 = call i32 @git_object_free(i32* %66)
  br label %88

68:                                               ; preds = %44
  %69 = call i32* @git__calloc(i32 1, i32 4)
  store i32* %69, i32** %23, align 8
  %70 = load i32*, i32** %23, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @git_oid_fromstr(i32* %70, i8* %71)
  %73 = load i32*, i32** %23, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = call i32* @git_reflog_entry_id_old(i32* %74)
  %76 = call i64 @git_oid_cmp(i32* %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load i32*, i32** %23, align 8
  %80 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %79)
  %81 = load i32*, i32** %20, align 8
  %82 = call i32* @git_reflog_entry_id_old(i32* %81)
  %83 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %82)
  %84 = call i32 @git_buf_puts(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %78, %68
  %86 = load i32*, i32** %23, align 8
  %87 = call i32 @git__free(i32* %86)
  br label %88

88:                                               ; preds = %85, %65
  br label %89

89:                                               ; preds = %88, %41
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %137

92:                                               ; preds = %89
  store i32* null, i32** %24, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = call i64 @git_revparse_single(i32** %24, i32* %93, i8* %94)
  %96 = load i64, i64* @GIT_OK, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %92
  %99 = load i32*, i32** %24, align 8
  %100 = call i32* @git_object_id(i32* %99)
  %101 = load i32*, i32** %20, align 8
  %102 = call i32* @git_reflog_entry_id_new(i32* %101)
  %103 = call i64 @git_oid_cmp(i32* %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load i32*, i32** %24, align 8
  %107 = call i32* @git_object_id(i32* %106)
  %108 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %107)
  %109 = load i32*, i32** %20, align 8
  %110 = call i32* @git_reflog_entry_id_new(i32* %109)
  %111 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %110)
  %112 = call i32 @git_buf_puts(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %105, %98
  %114 = load i32*, i32** %24, align 8
  %115 = call i32 @git_object_free(i32* %114)
  br label %136

116:                                              ; preds = %92
  %117 = call i32* @git__calloc(i32 1, i32 4)
  store i32* %117, i32** %25, align 8
  %118 = load i32*, i32** %25, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 @git_oid_fromstr(i32* %118, i8* %119)
  %121 = load i32*, i32** %25, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = call i32* @git_reflog_entry_id_new(i32* %122)
  %124 = call i64 @git_oid_cmp(i32* %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %116
  %127 = load i32*, i32** %25, align 8
  %128 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %127)
  %129 = load i32*, i32** %20, align 8
  %130 = call i32* @git_reflog_entry_id_new(i32* %129)
  %131 = call i32 @git_oid__writebuf(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %130)
  %132 = call i32 @git_buf_puts(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %126, %116
  %134 = load i32*, i32** %25, align 8
  %135 = call i32 @git__free(i32* %134)
  br label %136

136:                                              ; preds = %133, %113
  br label %137

137:                                              ; preds = %136, %89
  %138 = load i8*, i8** %15, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load i8*, i8** %15, align 8
  %142 = load i32*, i32** %20, align 8
  %143 = call %struct.TYPE_2__* @git_reflog_entry_committer(i32* %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strcmp(i8* %141, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load i8*, i8** %15, align 8
  %150 = load i32*, i32** %20, align 8
  %151 = call %struct.TYPE_2__* @git_reflog_entry_committer(i32* %150)
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @git_buf_printf(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %149, i8* %153)
  br label %155

155:                                              ; preds = %148, %140, %137
  %156 = load i8*, i8** %16, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load i32*, i32** %20, align 8
  %160 = call i8* @git_reflog_entry_message(i32* %159)
  store i8* %160, i8** %26, align 8
  %161 = load i8*, i8** %26, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %26, align 8
  br label %164

164:                                              ; preds = %163, %158
  %165 = load i8*, i8** %26, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i8*, i8** %16, align 8
  %169 = load i8*, i8** %26, align 8
  %170 = call i64 @strcmp(i8* %168, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i8*, i8** %16, align 8
  %174 = load i8*, i8** %26, align 8
  %175 = call i32 @git_buf_printf(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %173, i8* %174)
  br label %176

176:                                              ; preds = %172, %167, %164
  br label %177

177:                                              ; preds = %176, %155
  %178 = call i64 @git_buf_len(i32* %21)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i8*, i8** %17, align 8
  %182 = load i32, i32* %18, align 4
  %183 = call i32* @git_buf_cstr(i32* %21)
  %184 = call i32 @clar__fail(i8* %181, i32 %182, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %183, i32 1)
  br label %185

185:                                              ; preds = %180, %177
  %186 = call i32 @git_buf_dispose(i32* %21)
  %187 = load i32*, i32** %19, align 8
  %188 = call i32 @git_reflog_free(i32* %187)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reflog_read(i32**, i32*, i8*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i64) #1

declare dso_local i32 @clar__fail(i8*, i32, i8*, i32*, i32) #1

declare dso_local i64 @git_revparse_single(i32**, i32*, i8*) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32* @git_object_id(i32*) #1

declare dso_local i32* @git_reflog_entry_id_old(i32*) #1

declare dso_local i32 @git_oid__writebuf(i32*, i8*, i32*) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32* @git__calloc(i32, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git__free(i32*) #1

declare dso_local i32* @git_reflog_entry_id_new(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @git_reflog_entry_committer(i32*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @git_reflog_entry_message(i32*) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
