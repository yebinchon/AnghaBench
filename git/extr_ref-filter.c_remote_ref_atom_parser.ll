; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_remote_ref_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_remote_ref_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.ref_format = type { i32 }
%struct.used_atom = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8* }
%struct.strbuf = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"push:\00", align 1
@RR_REF = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@RR_TRACK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"trackshort\00", align 1
@RR_TRACKSHORT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"nobracket\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"remotename\00", align 1
@RR_REMOTE_NAME = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"remoteref\00", align 1
@RR_REMOTE_REF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @remote_ref_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_ref_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
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
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %21 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @starts_with(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %4
  %26 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %27 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** @RR_REF, align 8
  %35 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %36 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  store i8* %34, i8** %38, align 8
  %39 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %40 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %45 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %48 = call i32 @refname_atom_parser_internal(i32* %42, i8* %43, i8* %46, %struct.strbuf* %47)
  store i32 %48, i32* %5, align 4
  br label %155

49:                                               ; preds = %30
  %50 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %51 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @string_list_split(%struct.string_list* %10, i8* %54, i8 signext 44, i32 -1)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %150, %49
  %57 = load i32, i32* %11, align 4
  %58 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %153

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = load i8*, i8** @RR_TRACK, align 8
  %74 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %75 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  store i8* %73, i8** %77, align 8
  br label %149

78:                                               ; preds = %61
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** @RR_TRACKSHORT, align 8
  %84 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %85 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  store i8* %83, i8** %87, align 8
  br label %148

88:                                               ; preds = %78
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %94 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  br label %147

97:                                               ; preds = %88
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** @RR_REMOTE_NAME, align 8
  %103 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %104 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i8* %102, i8** %106, align 8
  %107 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %108 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  br label %146

111:                                              ; preds = %97
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** @RR_REMOTE_REF, align 8
  %117 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %118 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  store i8* %116, i8** %120, align 8
  %121 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %122 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %145

125:                                              ; preds = %111
  %126 = load i8*, i8** @RR_REF, align 8
  %127 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %128 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  store i8* %126, i8** %130, align 8
  %131 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %132 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i8*, i8** %8, align 8
  %136 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %137 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %140 = call i32 @refname_atom_parser_internal(i32* %134, i8* %135, i8* %138, %struct.strbuf* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %125
  %143 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  store i32 -1, i32* %5, align 4
  br label %155

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %115
  br label %146

146:                                              ; preds = %145, %101
  br label %147

147:                                              ; preds = %146, %92
  br label %148

148:                                              ; preds = %147, %82
  br label %149

149:                                              ; preds = %148, %72
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %56

153:                                              ; preds = %56
  %154 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %142, %33
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @refname_atom_parser_internal(i32*, i8*, i8*, %struct.strbuf*) #2

declare dso_local i32 @string_list_split(%struct.string_list*, i8*, i8 signext, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
