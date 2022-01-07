; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_reader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.pstore_record = type { i32, %struct.TYPE_6__, i8*, i64, i64, i32* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.cper_pstore_record = type { %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@erst_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@erst_disable = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reader_pos = common dso_local global i32 0, align 4
@APEI_ERST_INVALID_RECORD_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CPER_CREATOR_PSTORE = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_DMESG_Z = common dso_local global i32 0, align 4
@PSTORE_TYPE_DMESG = common dso_local global i8* null, align 8
@CPER_SECTION_TYPE_DMESG = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_MCE = common dso_local global i32 0, align 4
@PSTORE_TYPE_MCE = common dso_local global i8* null, align 8
@PSTORE_TYPE_MAX = common dso_local global i8* null, align 8
@CPER_VALID_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore_record*)* @erst_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erst_reader(%struct.pstore_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore_record*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cper_pstore_record*, align 8
  %8 = alloca i64, align 8
  store %struct.pstore_record* %0, %struct.pstore_record** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @erst_info, i32 0, i32 0), align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 20, %10
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* @erst_disable, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %179

17:                                               ; preds = %1
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.cper_pstore_record*
  store %struct.cper_pstore_record* %22, %struct.cper_pstore_record** %7, align 8
  %23 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %24 = icmp ne %struct.cper_pstore_record* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %164

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %69, %51, %28
  %30 = call i32 @erst_get_record_id_next(i32* @reader_pos, i64* %6)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %164

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @APEI_ERST_INVALID_RECORD_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %164

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %44 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @erst_read(i64 %42, %struct.TYPE_7__* %44, i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %29

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 20
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %164

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %65 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = call i64 @guid_equal(i32* %66, i32* @CPER_CREATOR_PSTORE)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %29

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kmalloc(i32 %71, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %76 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %75, i32 0, i32 5
  store i32* %74, i32** %76, align 8
  %77 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %78 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %164

84:                                               ; preds = %70
  %85 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %86 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %89 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 20
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32* %87, i32 %90, i32 %94)
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %98 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %100 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %102 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %104 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i64 @guid_equal(i32* %105, i32* @CPER_SECTION_TYPE_DMESG_Z)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %84
  %109 = load i8*, i8** @PSTORE_TYPE_DMESG, align 8
  %110 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %111 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %113 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %140

114:                                              ; preds = %84
  %115 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %116 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = call i64 @guid_equal(i32* %117, i32* @CPER_SECTION_TYPE_DMESG)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i8*, i8** @PSTORE_TYPE_DMESG, align 8
  %122 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %123 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  br label %139

124:                                              ; preds = %114
  %125 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %126 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = call i64 @guid_equal(i32* %127, i32* @CPER_SECTION_TYPE_MCE)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8*, i8** @PSTORE_TYPE_MCE, align 8
  %132 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %133 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %138

134:                                              ; preds = %124
  %135 = load i8*, i8** @PSTORE_TYPE_MAX, align 8
  %136 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %137 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %120
  br label %140

140:                                              ; preds = %139, %108
  %141 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %142 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @CPER_VALID_TIMESTAMP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %150 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %154 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 8
  br label %160

156:                                              ; preds = %140
  %157 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %158 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 0, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %148
  %161 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %162 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %81, %59, %38, %33, %25
  %165 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %7, align 8
  %166 = call i32 @kfree(%struct.cper_pstore_record* %165)
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  br label %176

172:                                              ; preds = %164
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = sub i64 %174, 20
  br label %176

176:                                              ; preds = %172, %169
  %177 = phi i64 [ %171, %169 ], [ %175, %172 ]
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %176, %14
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @erst_get_record_id_next(i32*, i64*) #1

declare dso_local i32 @erst_read(i64, %struct.TYPE_7__*, i64) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cper_pstore_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
