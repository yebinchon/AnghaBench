; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/test/extr_mruby_io_test.c_mrb_io_test_io_setup.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/test/extr_mruby_io_test.c_mrb_io_test_io_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i8*, i32 }
%struct.sockaddr = type { i32 }

@__const.mrb_io_test_io_setup.rfname = private unnamed_addr constant [29 x i8] c"tmp.mruby-io-test-r.XXXXXXXX\00", align 16
@__const.mrb_io_test_io_setup.wfname = private unnamed_addr constant [29 x i8] c"tmp.mruby-io-test-w.XXXXXXXX\00", align 16
@__const.mrb_io_test_io_setup.symlinkname = private unnamed_addr constant [29 x i8] c"tmp.mruby-io-test-l.XXXXXXXX\00", align 16
@__const.mrb_io_test_io_setup.socketname = private unnamed_addr constant [29 x i8] c"tmp.mruby-io-test-s.XXXXXXXX\00", align 16
@__const.mrb_io_test_io_setup.msg = private unnamed_addr constant [15 x i8] c"mruby io test\0A\00", align 1
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't create temporary file\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"$mrbtest_io_rfname\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"$mrbtest_io_wfname\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"$mrbtest_io_symlinkname\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"$mrbtest_io_socketname\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"$mrbtest_io_msg\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"can't open temporary file\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"can't make a symbolic link\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"can't make a socket\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"can't bind AF_UNIX socket to %S: %S\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_io_test_io_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_test_io_setup(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [29 x i8], align 16
  %7 = alloca [29 x i8], align 16
  %8 = alloca [29 x i8], align 16
  %9 = alloca [29 x i8], align 16
  %10 = alloca [15 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_un, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = bitcast [29 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.mrb_io_test_io_setup.rfname, i32 0, i32 0), i64 29, i1 false)
  %19 = bitcast [29 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.mrb_io_test_io_setup.wfname, i32 0, i32 0), i64 29, i1 false)
  %20 = bitcast [29 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.mrb_io_test_io_setup.symlinkname, i32 0, i32 0), i64 29, i1 false)
  %21 = bitcast [29 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.mrb_io_test_io_setup.socketname, i32 0, i32 0), i64 29, i1 false)
  %22 = bitcast [15 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.mrb_io_test_io_setup.msg, i32 0, i32 0), i64 15, i1 false)
  %23 = call i32 @umask(i32 63)
  store i32 %23, i32* %11, align 4
  %24 = getelementptr inbounds [29 x i8], [29 x i8]* %6, i64 0, i64 0
  %25 = call i32 @mkstemp(i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = getelementptr inbounds [29 x i8], [29 x i8]* %7, i64 0, i64 0
  %27 = call i32 @mkstemp(i8* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %36 = call i32 @mrb_raise(i32* %34, i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 (...) @mrb_nil_value()
  store i32 %37, i32* %3, align 4
  br label %173

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @close(i32 %41)
  %43 = getelementptr inbounds [29 x i8], [29 x i8]* %8, i64 0, i64 0
  %44 = call i32 @mkstemp(i8* %43)
  store i32 %44, i32* %15, align 4
  %45 = getelementptr inbounds [29 x i8], [29 x i8]* %9, i64 0, i64 0
  %46 = call i32 @mkstemp(i8* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %38
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %55 = call i32 @mrb_raise(i32* %53, i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 (...) @mrb_nil_value()
  store i32 %56, i32* %3, align 4
  br label %173

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @umask(i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @mrb_intern_cstr(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds [29 x i8], [29 x i8]* %6, i64 0, i64 0
  %65 = call i32 @mrb_str_new_cstr(i32* %63, i8* %64)
  %66 = call i32 @mrb_gv_set(i32* %60, i32 %62, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @mrb_intern_cstr(i32* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds [29 x i8], [29 x i8]* %7, i64 0, i64 0
  %72 = call i32 @mrb_str_new_cstr(i32* %70, i8* %71)
  %73 = call i32 @mrb_gv_set(i32* %67, i32 %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @mrb_intern_cstr(i32* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds [29 x i8], [29 x i8]* %8, i64 0, i64 0
  %79 = call i32 @mrb_str_new_cstr(i32* %77, i8* %78)
  %80 = call i32 @mrb_gv_set(i32* %74, i32 %76, i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @mrb_intern_cstr(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds [29 x i8], [29 x i8]* %9, i64 0, i64 0
  %86 = call i32 @mrb_str_new_cstr(i32* %84, i8* %85)
  %87 = call i32 @mrb_gv_set(i32* %81, i32 %83, i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @mrb_intern_cstr(i32* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %93 = call i32 @mrb_str_new_cstr(i32* %91, i8* %92)
  %94 = call i32 @mrb_gv_set(i32* %88, i32 %90, i32 %93)
  %95 = getelementptr inbounds [29 x i8], [29 x i8]* %6, i64 0, i64 0
  %96 = call i32* @fopen(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %96, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %57
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %102 = call i32 @mrb_raise(i32* %100, i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 (...) @mrb_nil_value()
  store i32 %103, i32* %3, align 4
  br label %173

104:                                              ; preds = %57
  %105 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @fputs(i8* %105, i32* %106)
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @fclose(i32* %108)
  %110 = getelementptr inbounds [29 x i8], [29 x i8]* %7, i64 0, i64 0
  %111 = call i32* @fopen(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %111, i32** %14, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %117 = call i32 @mrb_raise(i32* %115, i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %118 = call i32 (...) @mrb_nil_value()
  store i32 %118, i32* %3, align 4
  br label %173

119:                                              ; preds = %104
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @fclose(i32* %120)
  %122 = getelementptr inbounds [29 x i8], [29 x i8]* %8, i64 0, i64 0
  %123 = call i32 @unlink(i8* %122)
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @close(i32 %124)
  %126 = getelementptr inbounds [29 x i8], [29 x i8]* %6, i64 0, i64 0
  %127 = getelementptr inbounds [29 x i8], [29 x i8]* %8, i64 0, i64 0
  %128 = call i32 @symlink(i8* %126, i8* %127)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %134

130:                                              ; preds = %119
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %133 = call i32 @mrb_raise(i32* %131, i32 %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %119
  %135 = getelementptr inbounds [29 x i8], [29 x i8]* %9, i64 0, i64 0
  %136 = call i32 @unlink(i8* %135)
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @close(i32 %137)
  %139 = load i32, i32* @AF_UNIX, align 4
  %140 = load i32, i32* @SOCK_STREAM, align 4
  %141 = call i32 @socket(i32 %139, i32 %140, i32 0)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %147 = call i32 @mrb_raise(i32* %145, i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %134
  %149 = load i32, i32* @AF_UNIX, align 4
  %150 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 1
  store i32 %149, i32* %150, align 8
  %151 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds [29 x i8], [29 x i8]* %9, i64 0, i64 0
  %154 = call i32 @snprintf(i8* %152, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %153)
  %155 = load i32, i32* %16, align 4
  %156 = bitcast %struct.sockaddr_un* %17 to %struct.sockaddr*
  %157 = call i32 @bind(i32 %155, %struct.sockaddr* %156, i32 16)
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %169

159:                                              ; preds = %148
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @mrb_str_new_cstr(i32* %162, i8* %164)
  %166 = load i32, i32* @errno, align 4
  %167 = call i32 @mrb_fixnum_value(i32 %166)
  %168 = call i32 @mrb_raisef(i32* %160, i32 %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %165, i32 %167)
  br label %169

169:                                              ; preds = %159, %148
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @close(i32 %170)
  %172 = call i32 (...) @mrb_true_value()
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %114, %99, %52, %33
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #2

declare dso_local i32 @mrb_nil_value(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @mrb_gv_set(i32*, i32, i32) #2

declare dso_local i32 @mrb_intern_cstr(i32*, i8*) #2

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @mrb_fixnum_value(i32) #2

declare dso_local i32 @mrb_true_value(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
