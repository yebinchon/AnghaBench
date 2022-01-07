; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_setsockopt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"o|io\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"level is not an integer\00", align 1
@MRB_TT_TRUE = common dso_local global i64 0, align 8
@MRB_TT_FALSE = common dso_local global i64 0, align 8
@IP_MULTICAST_TTL = common dso_local global i32 0, align 4
@IP_MULTICAST_LOOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"optval should be true, false, an integer, or a string\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Socket::Option\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"not an instance of Socket::Option\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"optname\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"wrong number of arguments (%S for 3)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_basicsocket_setsockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_basicsocket_setsockopt(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %8, i32* %9)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %84

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @mrb_fixnum_p(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %25 = call i32 @mrb_raise(i32* %23, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @mrb_fixnum(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @mrb_string_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %83

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @mrb_type(i32 %34)
  %36 = load i64, i64* @MRB_TT_TRUE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @mrb_type(i32 %39)
  %41 = load i64, i64* @MRB_TT_FALSE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @mrb_test(i32 %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = bitcast i32* %11 to i8*
  %51 = call i32 @mrb_str_new(i32* %49, i8* %50, i32 4)
  store i32 %51, i32* %9, align 4
  br label %82

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @mrb_fixnum_p(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IP_MULTICAST_TTL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @IP_MULTICAST_LOOP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @mrb_fixnum(i32 %65)
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %12, align 1
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @mrb_str_new(i32* %68, i8* %12, i32 1)
  store i32 %69, i32* %9, align 4
  br label %76

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @mrb_fixnum(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = bitcast i32* %13 to i8*
  %75 = call i32 @mrb_str_new(i32* %73, i8* %74, i32 4)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %64
  br label %81

77:                                               ; preds = %52
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %80 = call i32 @mrb_raise(i32* %78, i32 %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %76
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %32
  br label %116

84:                                               ; preds = %2
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @mrb_obj_classname(i32* %88, i32 %89)
  %91 = call i64 @strcmp(i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %96 = call i32 @mrb_raise(i32* %94, i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %87
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @mrb_funcall(i32* %98, i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %101 = call i32 @mrb_fixnum(i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @mrb_funcall(i32* %102, i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %105 = call i32 @mrb_fixnum(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @mrb_funcall(i32* %106, i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i32 %108, i32* %9, align 4
  br label %115

109:                                              ; preds = %84
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @mrb_fixnum_value(i32 %112)
  %114 = call i32 @mrb_raisef(i32* %110, i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %97
  br label %116

116:                                              ; preds = %115, %83
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @socket_fd(i32* %117, i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @RSTRING_PTR(i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i64 @RSTRING_LEN(i32 %125)
  %127 = trunc i64 %126 to i32
  %128 = call i32 @setsockopt(i32 %120, i32 %121, i32 %122, i32 %124, i32 %127)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @mrb_sys_fail(i32* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %116
  %134 = call i32 @mrb_fixnum_value(i32 0)
  ret i32 %134
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @mrb_fixnum_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local i64 @mrb_test(i32) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mrb_obj_classname(i32*, i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
