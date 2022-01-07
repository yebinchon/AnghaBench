; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_align_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_align_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.ref_format = type { i32 }
%struct.used_atom = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.align }
%struct.align = type { i32, i32 }
%struct.strbuf = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"expected format: %%(align:<width>,<position>)\00", align 1
@ALIGN_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"position=\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unrecognized position:%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"width=\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"unrecognized width:%s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"unrecognized %%(align) argument: %s\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"positive width expected with the %%(align) atom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @align_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @align_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca %struct.used_atom*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.align*, align 8
  %11 = alloca %struct.string_list, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ref_format* %0, %struct.ref_format** %6, align 8
  store %struct.used_atom* %1, %struct.used_atom** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %16 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %17 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.align* %18, %struct.align** %10, align 8
  %19 = bitcast %struct.string_list* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  store i32 -1, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %24 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @strbuf_addf_ret(%struct.strbuf* %23, i32 -1, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %117

26:                                               ; preds = %4
  %27 = load i32, i32* @ALIGN_LEFT, align 4
  %28 = load %struct.align*, %struct.align** %10, align 8
  %29 = getelementptr inbounds %struct.align, %struct.align* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @string_list_split(%struct.string_list* %11, i8* %30, i8 signext 44, i32 -1)
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %101, %26
  %33 = load i32, i32* %12, align 4
  %34 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i64 @skip_prefix(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @parse_align_position(i8* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @strbuf_addf(%struct.strbuf* %54, i32 %55, i8* %56)
  %58 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  store i32 -1, i32* %5, align 4
  br label %117

59:                                               ; preds = %48
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.align*, %struct.align** %10, align 8
  %62 = getelementptr inbounds %struct.align, %struct.align* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %100

63:                                               ; preds = %37
  %64 = load i8*, i8** %14, align 8
  %65 = call i64 @skip_prefix(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %14)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i8*, i8** %14, align 8
  %69 = call i64 @strtoul_ui(i8* %68, i32 10, i32* %13)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @strbuf_addf(%struct.strbuf* %72, i32 %73, i8* %74)
  %76 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  store i32 -1, i32* %5, align 4
  br label %117

77:                                               ; preds = %67
  br label %99

78:                                               ; preds = %63
  %79 = load i8*, i8** %14, align 8
  %80 = call i64 @strtoul_ui(i8* %79, i32 10, i32* %13)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %98

83:                                               ; preds = %78
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @parse_align_position(i8* %84)
  store i32 %85, i32* %15, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.align*, %struct.align** %10, align 8
  %90 = getelementptr inbounds %struct.align, %struct.align* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %97

91:                                               ; preds = %83
  %92 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i8*, i8** %14, align 8
  %95 = call i32 @strbuf_addf(%struct.strbuf* %92, i32 %93, i8* %94)
  %96 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  store i32 -1, i32* %5, align 4
  br label %117

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %82
  br label %99

99:                                               ; preds = %98, %77
  br label %100

100:                                              ; preds = %99, %59
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %32

104:                                              ; preds = %32
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  %109 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %110 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %111 = call i32 @strbuf_addf_ret(%struct.strbuf* %109, i32 -1, i32 %110)
  store i32 %111, i32* %5, align 4
  br label %117

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.align*, %struct.align** %10, align 8
  %115 = getelementptr inbounds %struct.align, %struct.align* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %107, %91, %71, %53, %22
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @string_list_split(%struct.string_list*, i8*, i8 signext, i32) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @parse_align_position(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i64 @strtoul_ui(i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
