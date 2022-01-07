; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_read_irep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_read_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rite_section_header = type { i32, i32 }

@MRB_DUMP_OK = common dso_local global i32 0, align 4
@RITE_SECTION_IREP_IDENT = common dso_local global i32 0, align 4
@RITE_SECTION_LINENO_IDENT = common dso_local global i32 0, align 4
@RITE_SECTION_DEBUG_IDENT = common dso_local global i32 0, align 4
@RITE_SECTION_LV_IDENT = common dso_local global i32 0, align 4
@RITE_BINARY_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @read_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_irep(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rite_section_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i32* null, i32** %4, align 8
  br label %145

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @read_binary_header(i32* %21, i64* %12, i64* %11, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MRB_DUMP_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %145

27:                                               ; preds = %20
  %28 = call i64 (...) @offset_crc_body()
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = sub i64 %33, %34
  %36 = call i64 @calc_crc_16_ccitt(i32* %32, i64 %35, i32 0)
  %37 = icmp ne i64 %29, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32* null, i32** %4, align 8
  br label %145

39:                                               ; preds = %27
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %6, align 8
  br label %42

42:                                               ; preds = %136, %39
  %43 = load i32*, i32** %6, align 8
  %44 = bitcast i32* %43 to %struct.rite_section_header*
  store %struct.rite_section_header* %44, %struct.rite_section_header** %10, align 8
  %45 = load %struct.rite_section_header*, %struct.rite_section_header** %10, align 8
  %46 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RITE_SECTION_IREP_IDENT, align 4
  %49 = call i64 @memcmp(i32 %47, i32 %48, i32 4)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32* @read_section_irep(i32* %52, i32* %53, i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32* null, i32** %4, align 8
  br label %145

59:                                               ; preds = %51
  br label %128

60:                                               ; preds = %42
  %61 = load %struct.rite_section_header*, %struct.rite_section_header** %10, align 8
  %62 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RITE_SECTION_LINENO_IDENT, align 4
  %65 = call i64 @memcmp(i32 %63, i32 %64, i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32* null, i32** %4, align 8
  br label %145

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @read_section_lineno(i32* %72, i32* %73, i32* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MRB_DUMP_OK, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32* null, i32** %4, align 8
  br label %145

80:                                               ; preds = %71
  br label %127

81:                                               ; preds = %60
  %82 = load %struct.rite_section_header*, %struct.rite_section_header** %10, align 8
  %83 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RITE_SECTION_DEBUG_IDENT, align 4
  %86 = call i64 @memcmp(i32 %84, i32 %85, i32 4)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %81
  %89 = load i32*, i32** %9, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32* null, i32** %4, align 8
  br label %145

92:                                               ; preds = %88
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @read_section_debug(i32* %93, i32* %94, i32* %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @MRB_DUMP_OK, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32* null, i32** %4, align 8
  br label %145

102:                                              ; preds = %92
  br label %126

103:                                              ; preds = %81
  %104 = load %struct.rite_section_header*, %struct.rite_section_header** %10, align 8
  %105 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RITE_SECTION_LV_IDENT, align 4
  %108 = call i64 @memcmp(i32 %106, i32 %107, i32 4)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %103
  %111 = load i32*, i32** %9, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32* null, i32** %4, align 8
  br label %145

114:                                              ; preds = %110
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @read_section_lv(i32* %115, i32* %116, i32* %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MRB_DUMP_OK, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32* null, i32** %4, align 8
  br label %145

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %103
  br label %126

126:                                              ; preds = %125, %102
  br label %127

127:                                              ; preds = %126, %80
  br label %128

128:                                              ; preds = %127, %59
  %129 = load %struct.rite_section_header*, %struct.rite_section_header** %10, align 8
  %130 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @bin_to_uint32(i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %6, align 8
  br label %136

136:                                              ; preds = %128
  %137 = load %struct.rite_section_header*, %struct.rite_section_header** %10, align 8
  %138 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RITE_BINARY_EOF, align 4
  %141 = call i64 @memcmp(i32 %139, i32 %140, i32 4)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %42, label %143

143:                                              ; preds = %136
  %144 = load i32*, i32** %9, align 8
  store i32* %144, i32** %4, align 8
  br label %145

145:                                              ; preds = %143, %123, %113, %101, %91, %79, %70, %58, %38, %26, %19
  %146 = load i32*, i32** %4, align 8
  ret i32* %146
}

declare dso_local i32 @read_binary_header(i32*, i64*, i64*, i32*) #1

declare dso_local i64 @offset_crc_body(...) #1

declare dso_local i64 @calc_crc_16_ccitt(i32*, i64, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32* @read_section_irep(i32*, i32*, i32) #1

declare dso_local i32 @read_section_lineno(i32*, i32*, i32*) #1

declare dso_local i32 @read_section_debug(i32*, i32*, i32*, i32) #1

declare dso_local i32 @read_section_lv(i32*, i32*, i32*, i32) #1

declare dso_local i32 @bin_to_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
