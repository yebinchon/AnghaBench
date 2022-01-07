; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_trailers_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_trailers_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.ref_format = type { i32 }
%struct.used_atom = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.strbuf = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"unfold\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown %%(trailers) argument: %s\00", align 1
@C_TRAILERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @trailers_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trailers_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca %struct.used_atom*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.string_list, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ref_format* %0, %struct.ref_format** %6, align 8
  store %struct.used_atom* %1, %struct.used_atom** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %13 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %14 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %15 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %68

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @string_list_split(%struct.string_list* %10, i8* %22, i8 signext 44, i32 -1)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %64, %21
  %25 = load i32, i32* %11, align 4
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %42 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %63

46:                                               ; preds = %29
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %52 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %58 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @strbuf_addf(%struct.strbuf* %57, i32 %58, i8* %59)
  %61 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  store i32 -1, i32* %5, align 4
  br label %75

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %24

67:                                               ; preds = %24
  br label %68

68:                                               ; preds = %67, %4
  %69 = load i32, i32* @C_TRAILERS, align 4
  %70 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %71 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %56
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @string_list_split(%struct.string_list*, i8*, i8 signext, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
