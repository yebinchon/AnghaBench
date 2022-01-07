; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_grab_commit_values.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_grab_commit_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.strbuf = type { i32 }
%struct.atom_value = type { i32, i64 }
%struct.object = type { i32 }
%struct.commit = type { %struct.TYPE_3__, %struct.commit_list* }
%struct.TYPE_3__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@used_atom_cnt = common dso_local global i32 0, align 4
@used_atom = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"numparent\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atom_value*, i32, %struct.object*)* @grab_commit_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grab_commit_values(%struct.atom_value* %0, i32 %1, %struct.object* %2) #0 {
  %4 = alloca %struct.atom_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atom_value*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.commit*, align 8
  store %struct.atom_value* %0, %struct.atom_value** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.object* %2, %struct.object** %6, align 8
  %14 = load %struct.object*, %struct.object** %6, align 8
  %15 = bitcast %struct.object* %14 to %struct.commit*
  store %struct.commit* %15, %struct.commit** %8, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %117, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @used_atom_cnt, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %120

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @used_atom, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load %struct.atom_value*, %struct.atom_value** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %27, i64 %29
  store %struct.atom_value* %30, %struct.atom_value** %10, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 42
  %40 = zext i1 %39 to i32
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %117

43:                                               ; preds = %20
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load %struct.commit*, %struct.commit** %8, align 8
  %55 = call i32* @get_commit_tree_oid(%struct.commit* %54)
  %56 = call i32 @oid_to_hex(i32* %55)
  %57 = call i32 @xstrdup(i32 %56)
  %58 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %59 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %116

60:                                               ; preds = %49
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = load %struct.commit*, %struct.commit** %8, align 8
  %66 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 1
  %67 = load %struct.commit_list*, %struct.commit_list** %66, align 8
  %68 = call i64 @commit_list_count(%struct.commit_list* %67)
  %69 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %70 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %72 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @xstrfmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %76 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %115

77:                                               ; preds = %60
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %114, label %81

81:                                               ; preds = %77
  %82 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %83 = load %struct.commit*, %struct.commit** %8, align 8
  %84 = getelementptr inbounds %struct.commit, %struct.commit* %83, i32 0, i32 1
  %85 = load %struct.commit_list*, %struct.commit_list** %84, align 8
  store %struct.commit_list* %85, %struct.commit_list** %11, align 8
  br label %86

86:                                               ; preds = %106, %81
  %87 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %88 = icmp ne %struct.commit_list* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %91 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %90, i32 0, i32 0
  %92 = load %struct.commit*, %struct.commit** %91, align 8
  store %struct.commit* %92, %struct.commit** %13, align 8
  %93 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %94 = load %struct.commit*, %struct.commit** %8, align 8
  %95 = getelementptr inbounds %struct.commit, %struct.commit* %94, i32 0, i32 1
  %96 = load %struct.commit_list*, %struct.commit_list** %95, align 8
  %97 = icmp ne %struct.commit_list* %93, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = call i32 @strbuf_addch(%struct.strbuf* %12, i8 signext 32)
  br label %100

100:                                              ; preds = %98, %89
  %101 = load %struct.commit*, %struct.commit** %13, align 8
  %102 = getelementptr inbounds %struct.commit, %struct.commit* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = call i32 @oid_to_hex(i32* %103)
  %105 = call i32 @strbuf_addstr(%struct.strbuf* %12, i32 %104)
  br label %106

106:                                              ; preds = %100
  %107 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %108 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %107, i32 0, i32 1
  %109 = load %struct.commit_list*, %struct.commit_list** %108, align 8
  store %struct.commit_list* %109, %struct.commit_list** %11, align 8
  br label %86

110:                                              ; preds = %86
  %111 = call i32 @strbuf_detach(%struct.strbuf* %12, i32* null)
  %112 = load %struct.atom_value*, %struct.atom_value** %10, align 8
  %113 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %77
  br label %115

115:                                              ; preds = %114, %64
  br label %116

116:                                              ; preds = %115, %53
  br label %117

117:                                              ; preds = %116, %42
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %16

120:                                              ; preds = %16
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32* @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i64 @commit_list_count(%struct.commit_list*) #1

declare dso_local i32 @xstrfmt(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
