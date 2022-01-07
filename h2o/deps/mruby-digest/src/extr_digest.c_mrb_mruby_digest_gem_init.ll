; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_digest.c_mrb_mruby_digest_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_digest.c_mrb_mruby_digest_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"block_length\00", align 1
@mrb_digest_block_length = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@mrb_digest_digest = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"digest!\00", align 1
@mrb_digest_digest_bang = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"digest_length\00", align 1
@mrb_digest_digest_length = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"hexdigest\00", align 1
@mrb_digest_hexdigest = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@mrb_digest_init = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@mrb_digest_init_copy = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@mrb_digest_reset = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@mrb_digest_update = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@mrb_hmac_block_length = common dso_local global i32 0, align 4
@mrb_hmac_digest = common dso_local global i32 0, align 4
@mrb_hmac_digest_length = common dso_local global i32 0, align 4
@mrb_hmac_hexdigest = common dso_local global i32 0, align 4
@mrb_hmac_init = common dso_local global i32 0, align 4
@mrb_hmac_init_copy = common dso_local global i32 0, align 4
@mrb_hmac_update = common dso_local global i32 0, align 4
@MD5 = common dso_local global i32 0, align 4
@RMD160 = common dso_local global i32 0, align 4
@SHA1 = common dso_local global i32 0, align 4
@SHA256 = common dso_local global i32 0, align 4
@SHA384 = common dso_local global i32 0, align 4
@SHA512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_digest_gem_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = call i32 (...) @lib_init()
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call %struct.RClass* @mrb_define_module(%struct.TYPE_6__* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %8, %struct.RClass** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.RClass*, %struct.RClass** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.RClass* @mrb_define_class_under(%struct.TYPE_6__* %9, %struct.RClass* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store %struct.RClass* %14, %struct.RClass** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = load %struct.RClass*, %struct.RClass** %3, align 8
  %17 = load i32, i32* @mrb_digest_block_length, align 4
  %18 = call i32 (...) @MRB_ARGS_NONE()
  %19 = call i32 @mrb_define_method(%struct.TYPE_6__* %15, %struct.RClass* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = load %struct.RClass*, %struct.RClass** %3, align 8
  %22 = load i32, i32* @mrb_digest_digest, align 4
  %23 = call i32 (...) @MRB_ARGS_NONE()
  %24 = call i32 @mrb_define_method(%struct.TYPE_6__* %20, %struct.RClass* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = load %struct.RClass*, %struct.RClass** %3, align 8
  %27 = load i32, i32* @mrb_digest_digest_bang, align 4
  %28 = call i32 (...) @MRB_ARGS_NONE()
  %29 = call i32 @mrb_define_method(%struct.TYPE_6__* %25, %struct.RClass* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = load %struct.RClass*, %struct.RClass** %3, align 8
  %32 = load i32, i32* @mrb_digest_digest_length, align 4
  %33 = call i32 (...) @MRB_ARGS_NONE()
  %34 = call i32 @mrb_define_method(%struct.TYPE_6__* %30, %struct.RClass* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = load %struct.RClass*, %struct.RClass** %3, align 8
  %37 = load i32, i32* @mrb_digest_hexdigest, align 4
  %38 = call i32 (...) @MRB_ARGS_NONE()
  %39 = call i32 @mrb_define_method(%struct.TYPE_6__* %35, %struct.RClass* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = load %struct.RClass*, %struct.RClass** %3, align 8
  %42 = load i32, i32* @mrb_digest_init, align 4
  %43 = call i32 (...) @MRB_ARGS_NONE()
  %44 = call i32 @mrb_define_method(%struct.TYPE_6__* %40, %struct.RClass* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = load %struct.RClass*, %struct.RClass** %3, align 8
  %47 = load i32, i32* @mrb_digest_init_copy, align 4
  %48 = call i32 @MRB_ARGS_REQ(i32 1)
  %49 = call i32 @mrb_define_method(%struct.TYPE_6__* %45, %struct.RClass* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = load %struct.RClass*, %struct.RClass** %3, align 8
  %52 = load i32, i32* @mrb_digest_reset, align 4
  %53 = call i32 (...) @MRB_ARGS_NONE()
  %54 = call i32 @mrb_define_method(%struct.TYPE_6__* %50, %struct.RClass* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = load %struct.RClass*, %struct.RClass** %3, align 8
  %57 = load i32, i32* @mrb_digest_update, align 4
  %58 = call i32 @MRB_ARGS_REQ(i32 1)
  %59 = call i32 @mrb_define_method(%struct.TYPE_6__* %55, %struct.RClass* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = load %struct.RClass*, %struct.RClass** %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.RClass* @mrb_define_class_under(%struct.TYPE_6__* %60, %struct.RClass* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %64)
  store %struct.RClass* %65, %struct.RClass** %5, align 8
  %66 = load %struct.RClass*, %struct.RClass** %5, align 8
  %67 = load i32, i32* @MRB_TT_DATA, align 4
  %68 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %66, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = load %struct.RClass*, %struct.RClass** %5, align 8
  %71 = load i32, i32* @mrb_hmac_block_length, align 4
  %72 = call i32 (...) @MRB_ARGS_NONE()
  %73 = call i32 @mrb_define_method(%struct.TYPE_6__* %69, %struct.RClass* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = load %struct.RClass*, %struct.RClass** %5, align 8
  %76 = load i32, i32* @mrb_hmac_digest, align 4
  %77 = call i32 (...) @MRB_ARGS_NONE()
  %78 = call i32 @mrb_define_method(%struct.TYPE_6__* %74, %struct.RClass* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = load %struct.RClass*, %struct.RClass** %5, align 8
  %81 = load i32, i32* @mrb_hmac_digest_length, align 4
  %82 = call i32 (...) @MRB_ARGS_NONE()
  %83 = call i32 @mrb_define_method(%struct.TYPE_6__* %79, %struct.RClass* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = load %struct.RClass*, %struct.RClass** %5, align 8
  %86 = load i32, i32* @mrb_hmac_hexdigest, align 4
  %87 = call i32 (...) @MRB_ARGS_NONE()
  %88 = call i32 @mrb_define_method(%struct.TYPE_6__* %84, %struct.RClass* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = load %struct.RClass*, %struct.RClass** %5, align 8
  %91 = load i32, i32* @mrb_hmac_init, align 4
  %92 = call i32 @MRB_ARGS_REQ(i32 2)
  %93 = call i32 @mrb_define_method(%struct.TYPE_6__* %89, %struct.RClass* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = load %struct.RClass*, %struct.RClass** %5, align 8
  %96 = load i32, i32* @mrb_hmac_init_copy, align 4
  %97 = call i32 @MRB_ARGS_REQ(i32 1)
  %98 = call i32 @mrb_define_method(%struct.TYPE_6__* %94, %struct.RClass* %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = load %struct.RClass*, %struct.RClass** %5, align 8
  %101 = load i32, i32* @mrb_hmac_update, align 4
  %102 = call i32 @MRB_ARGS_REQ(i32 1)
  %103 = call i32 @mrb_define_method(%struct.TYPE_6__* %99, %struct.RClass* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @lib_init(...) #1

declare dso_local %struct.RClass* @mrb_define_module(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.RClass* @mrb_define_class_under(%struct.TYPE_6__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_6__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
