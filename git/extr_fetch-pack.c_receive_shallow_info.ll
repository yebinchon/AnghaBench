; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_receive_shallow_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_receive_shallow_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_pack_args = type { i32 }
%struct.packet_reader = type { i64, i64 }
%struct.oid_array = type { i32, i32* }
%struct.shallow_info = type { i32, i64, i64 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"shallow-info\00", align 1
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"shallow \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid shallow line: %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"unshallow \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid unshallow line: %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"object not found: %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"error in object: %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"no shallow found: %s\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"expected shallow/unshallow, got %s\00", align 1
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@PACKET_READ_DELIM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"error processing shallow info: %d\00", align 1
@shallow_lock = common dso_local global i32 0, align 4
@alternate_shallow_file = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_pack_args*, %struct.packet_reader*, %struct.oid_array*, %struct.shallow_info*)* @receive_shallow_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_shallow_info(%struct.fetch_pack_args* %0, %struct.packet_reader* %1, %struct.oid_array* %2, %struct.shallow_info* %3) #0 {
  %5 = alloca %struct.fetch_pack_args*, align 8
  %6 = alloca %struct.packet_reader*, align 8
  %7 = alloca %struct.oid_array*, align 8
  %8 = alloca %struct.shallow_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i32, align 4
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %5, align 8
  store %struct.packet_reader* %1, %struct.packet_reader** %6, align 8
  store %struct.oid_array* %2, %struct.oid_array** %7, align 8
  store %struct.shallow_info* %3, %struct.shallow_info** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %14 = call i32 @process_section_header(%struct.packet_reader* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %15

15:                                               ; preds = %85, %84, %36, %4
  %16 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %17 = call i64 @packet_reader_read(%struct.packet_reader* %16)
  %18 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %15
  %21 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %22 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @skip_prefix(i64 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @get_oid_hex(i8* %27, %struct.object_id* %11)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %33 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @die(i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %30, %26
  %37 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %38 = call i32 @oid_array_append(%struct.oid_array* %37, %struct.object_id* %11)
  br label %15

39:                                               ; preds = %20
  %40 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %41 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @skip_prefix(i64 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %10)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @get_oid_hex(i8* %46, %struct.object_id* %11)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %52 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @die(i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* @the_repository, align 4
  %57 = call i32 @lookup_object(i32 %56, %struct.object_id* %11)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %62 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @die(i32 %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i32, i32* @the_repository, align 4
  %67 = call i32 @parse_object(i32 %66, %struct.object_id* %11)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %72 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @die(i32 %70, i64 %73)
  br label %75

75:                                               ; preds = %69, %65
  %76 = call i64 @unregister_shallow(%struct.object_id* %11)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %80 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %81 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @die(i32 %79, i64 %82)
  br label %84

84:                                               ; preds = %78, %75
  store i32 1, i32* %9, align 4
  br label %15

85:                                               ; preds = %39
  %86 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %87 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %88 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @die(i32 %86, i64 %89)
  br label %15

91:                                               ; preds = %15
  %92 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %93 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %99 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PACKET_READ_DELIM, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %105 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %106 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @die(i32 %104, i64 %107)
  br label %109

109:                                              ; preds = %103, %97, %91
  %110 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %111 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %114, %109
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %133, %117
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %121 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %118
  %125 = load i32, i32* @the_repository, align 4
  %126 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %127 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call i32 @register_shallow(i32 %125, i32* %131)
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %118

136:                                              ; preds = %118
  %137 = call i32 @setup_alternate_shallow(i32* @shallow_lock, i32** @alternate_shallow_file, i32* null)
  %138 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %139 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  br label %167

140:                                              ; preds = %114
  %141 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %142 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %140
  %146 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %147 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %148 = call i32 @prepare_shallow_info(%struct.shallow_info* %146, %struct.oid_array* %147)
  %149 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %150 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %145
  %154 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %155 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153, %145
  %159 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %160 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32* @setup_temporary_shallow(i32 %161)
  store i32* %162, i32** @alternate_shallow_file, align 8
  br label %164

163:                                              ; preds = %153
  store i32* null, i32** @alternate_shallow_file, align 8
  br label %164

164:                                              ; preds = %163, %158
  br label %166

165:                                              ; preds = %140
  store i32* null, i32** @alternate_shallow_file, align 8
  br label %166

166:                                              ; preds = %165, %164
  br label %167

167:                                              ; preds = %166, %136
  ret void
}

declare dso_local i32 @process_section_header(%struct.packet_reader*, i8*, i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i64 @skip_prefix(i64, i8*, i8**) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

declare dso_local i32 @lookup_object(i32, %struct.object_id*) #1

declare dso_local i32 @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @unregister_shallow(%struct.object_id*) #1

declare dso_local i32 @register_shallow(i32, i32*) #1

declare dso_local i32 @setup_alternate_shallow(i32*, i32**, i32*) #1

declare dso_local i32 @prepare_shallow_info(%struct.shallow_info*, %struct.oid_array*) #1

declare dso_local i32* @setup_temporary_shallow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
