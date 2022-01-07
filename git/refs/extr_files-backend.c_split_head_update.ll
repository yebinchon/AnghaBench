; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_split_head_update.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_split_head_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_update = type { i32, i32, i32, i32, i32 }
%struct.ref_transaction = type { i32 }
%struct.string_list = type { i32 }
%struct.strbuf = type { i32 }
%struct.string_list_item = type { %struct.ref_update* }

@REF_LOG_ONLY = common dso_local global i32 0, align 4
@REF_IS_PRUNING = common dso_local global i32 0, align 4
@REF_UPDATE_VIA_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"multiple updates for 'HEAD' (including one via its referent '%s') are not allowed\00", align 1
@TRANSACTION_NAME_CONFLICT = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s unexpectedly not 'HEAD'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_update*, %struct.ref_transaction*, i8*, %struct.string_list*, %struct.strbuf*)* @split_head_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_head_update(%struct.ref_update* %0, %struct.ref_transaction* %1, i8* %2, %struct.string_list* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_update*, align 8
  %8 = alloca %struct.ref_transaction*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.string_list*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.string_list_item*, align 8
  %13 = alloca %struct.ref_update*, align 8
  store %struct.ref_update* %0, %struct.ref_update** %7, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.string_list* %3, %struct.string_list** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  %14 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %15 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @REF_LOG_ONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %5
  %21 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %22 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REF_IS_PRUNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %29 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REF_UPDATE_VIA_HEAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20, %5
  store i32 0, i32* %6, align 4
  br label %90

35:                                               ; preds = %27
  %36 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %37 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strcmp(i32 %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %90

43:                                               ; preds = %35
  %44 = load %struct.string_list*, %struct.string_list** %10, align 8
  %45 = call i64 @string_list_has_string(%struct.string_list* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %49 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %50 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strbuf_addf(%struct.strbuf* %48, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @TRANSACTION_NAME_CONFLICT, align 4
  store i32 %53, i32* %6, align 4
  br label %90

54:                                               ; preds = %43
  %55 = load %struct.ref_transaction*, %struct.ref_transaction** %8, align 8
  %56 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %57 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @REF_LOG_ONLY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @REF_NO_DEREF, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %64 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %63, i32 0, i32 4
  %65 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %66 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %65, i32 0, i32 3
  %67 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %68 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.ref_update* @ref_transaction_add_update(%struct.ref_transaction* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %62, i32* %64, i32* %66, i32 %69)
  store %struct.ref_update* %70, %struct.ref_update** %13, align 8
  %71 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %72 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strcmp(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %54
  %77 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %78 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %54
  %82 = load %struct.string_list*, %struct.string_list** %10, align 8
  %83 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %84 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %82, i32 %85)
  store %struct.string_list_item* %86, %struct.string_list_item** %12, align 8
  %87 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %88 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %89 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %88, i32 0, i32 0
  store %struct.ref_update* %87, %struct.ref_update** %89, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %81, %47, %42, %34
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @string_list_has_string(%struct.string_list*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local %struct.ref_update* @ref_transaction_add_update(%struct.ref_transaction*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
