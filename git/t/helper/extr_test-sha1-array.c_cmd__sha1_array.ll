; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-sha1-array.c_cmd__sha1_array.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-sha1-array.c_cmd__sha1_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.strbuf = type { i8* }
%struct.object_id = type { i32 }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"append \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"not a hexadecimal SHA1: %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"lookup \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"for_each_unique\00", align 1
@print_oid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"unknown command: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__sha1_array(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.oid_array, align 4
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = bitcast %struct.oid_array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32, i32* @stdin, align 4
  %13 = call i64 @strbuf_getline(%struct.strbuf* %6, i32 %12)
  %14 = load i64, i64* @EOF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @skip_prefix(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @get_oid_hex(i8* %22, %struct.object_id* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = call i32 @oid_array_append(%struct.oid_array* %5, %struct.object_id* %8)
  br label %67

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @skip_prefix(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @get_oid_hex(i8* %36, %struct.object_id* %8)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = call i32 @oid_array_lookup(%struct.oid_array* %5, %struct.object_id* %8)
  %44 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %66

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 @oid_array_clear(%struct.oid_array* %5)
  br label %65

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @print_oid, align 4
  %59 = call i32 @oid_array_for_each_unique(%struct.oid_array* %5, i32 %58, i32* null)
  br label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %28
  br label %11

68:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @oid_array_lookup(%struct.oid_array*, %struct.object_id*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

declare dso_local i32 @oid_array_for_each_unique(%struct.oid_array*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
