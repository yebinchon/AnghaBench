; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_classifier_instance = type { i64, i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Unable to allocation socket.\0A\00", align 1
@NL_CLASSIFIER_GENL_FAMILY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to resolve family %s\0A\00", align 1
@NL_CLASSIFIER_GENL_GROUP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to resolve mcast group %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to add membership\0A\00", align 1
@NL_CB_VALID = common dso_local global i32 0, align 4
@NL_CB_CUSTOM = common dso_local global i32 0, align 4
@nl_classifier_msg_recv = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"nl classifier init successful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_classifier_init(%struct.nl_classifier_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nl_classifier_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.nl_classifier_instance* %0, %struct.nl_classifier_instance** %3, align 8
  %5 = call i32* (...) @nl_socket_alloc()
  %6 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %7 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %6, i32 0, i32 2
  store i32* %5, i32** %7, align 8
  %8 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %9 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %16 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @genl_connect(i32* %17)
  %19 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %20 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i8*, i8** @NL_CLASSIFIER_GENL_FAMILY, align 8
  %23 = call i64 @genl_ctrl_resolve(i32* %21, i8* %22)
  %24 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %25 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %27 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load i8*, i8** @NL_CLASSIFIER_GENL_FAMILY, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %74

33:                                               ; preds = %14
  %34 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %35 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i8*, i8** @NL_CLASSIFIER_GENL_FAMILY, align 8
  %38 = load i8*, i8** @NL_CLASSIFIER_GENL_GROUP, align 8
  %39 = call i64 @genl_ctrl_resolve_grp(i32* %36, i8* %37, i8* %38)
  %40 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %41 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %43 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i8*, i8** @NL_CLASSIFIER_GENL_GROUP, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %74

49:                                               ; preds = %33
  %50 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %51 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %54 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @nl_socket_add_membership(i32* %52, i64 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %63 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @nl_socket_disable_seq_check(i32* %64)
  %66 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %67 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @NL_CB_VALID, align 4
  %70 = load i32, i32* @NL_CB_CUSTOM, align 4
  %71 = load i32, i32* @nl_classifier_msg_recv, align 4
  %72 = call i32 @nl_socket_modify_cb(i32* %68, i32 %69, i32 %70, i32 %71, i32* null)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

74:                                               ; preds = %59, %46, %30
  %75 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %76 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %81 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @nl_close(i32* %82)
  %84 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %85 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @nl_socket_free(i32* %86)
  %88 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %3, align 8
  %89 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %79, %74
  store i32 -1, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %61, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32* @nl_socket_alloc(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @genl_connect(i32*) #1

declare dso_local i64 @genl_ctrl_resolve(i32*, i8*) #1

declare dso_local i64 @genl_ctrl_resolve_grp(i32*, i8*, i8*) #1

declare dso_local i32 @nl_socket_add_membership(i32*, i64) #1

declare dso_local i32 @nl_socket_disable_seq_check(i32*) #1

declare dso_local i32 @nl_socket_modify_cb(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nl_close(i32*) #1

declare dso_local i32 @nl_socket_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
