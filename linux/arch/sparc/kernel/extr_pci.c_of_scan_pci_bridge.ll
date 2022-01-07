; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_of_scan_pci_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_of_scan_pci_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32 }
%struct.device_node = type { i32 }
%struct.pci_dev = type { %struct.TYPE_3__*, %struct.resource* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }
%struct.pci_bus = type { i32, %struct.device_node*, %struct.resource**, i64, i32 }
%struct.pci_bus_region = type { i32, i32 }

@ofpci_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"of_scan_pci_bridge(%pOF)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Can't get bus-range for PCI-PCI bridge %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"    Bridge bus range [%u --> %u]\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SUNW,simba\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to create pci bus for %pOF\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"    Bridge ranges[%p] simba[%d]\0A\00", align 1
@PCI_BRIDGE_RESOURCES = common dso_local global i64 0, align 8
@PCI_NUM_RESOURCES = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [56 x i8] c"    RAW Range[%08x:%08x:%08x:%08x:%08x:%08x:%08x:%08x]\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"ignoring extra I/O range for bridge %pOF\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"too many memory ranges for bridge %pOF\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"      Using flags[%08x] start[%016llx] size[%016llx]\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"PCI Bus %04x:%02x\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"    bus name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, %struct.device_node*, %struct.pci_dev*)* @of_scan_pci_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_scan_pci_bridge(%struct.pci_pbm_info* %0, %struct.device_node* %1, %struct.pci_dev* %2) #0 {
  %4 = alloca %struct.pci_pbm_info*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_bus_region, align 4
  %14 = alloca %struct.resource*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %6, align 8
  %19 = load i64, i64* @ofpci_verbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = ptrtoint %struct.device_node* %23 to i32
  %25 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_info(%struct.pci_dev* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i8* @of_get_property(%struct.device_node* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 8
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %26
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = ptrtoint %struct.device_node* %37 to i32
  %39 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_info(%struct.pci_dev* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %303

40:                                               ; preds = %32
  %41 = load i64, i64* @ofpci_verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_info(%struct.pci_dev* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %40
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i8* @of_get_property(%struct.device_node* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = call i8* @of_get_property(%struct.device_node* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i8* %60, i8** %17, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %17, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %63, %58
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.pci_bus* @pci_add_new_bus(%struct.TYPE_3__* %72, %struct.pci_dev* %73, i32 %76)
  store %struct.pci_bus* %77, %struct.pci_bus** %7, align 8
  %78 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %79 = icmp ne %struct.pci_bus* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %69
  %81 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = call i32 @pci_err(%struct.pci_dev* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %82)
  br label %303

84:                                               ; preds = %69
  %85 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %91 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pci_bus_insert_busn_res(%struct.pci_bus* %92, i32 %95, i32 %98)
  %100 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %101 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load i64, i64* @ofpci_verbose, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %84
  %105 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = ptrtoint i32* %106 to i32
  %108 = load i32, i32* %12, align 4
  %109 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_info(%struct.pci_dev* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %84
  %111 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 1
  %113 = load %struct.resource*, %struct.resource** %112, align 8
  %114 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %113, i64 %114
  store %struct.resource* %115, %struct.resource** %14, align 8
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %135, %110
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @PCI_NUM_RESOURCES, align 8
  %120 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %121 = sub i64 %119, %120
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %116
  %124 = load %struct.resource*, %struct.resource** %14, align 8
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %124, i32 0, i32 0
  store i32 0, i32* %125, align 4
  %126 = load %struct.resource*, %struct.resource** %14, align 8
  %127 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %128 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %127, i32 0, i32 2
  %129 = load %struct.resource**, %struct.resource*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.resource*, %struct.resource** %129, i64 %131
  store %struct.resource* %126, %struct.resource** %132, align 8
  %133 = load %struct.resource*, %struct.resource** %14, align 8
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i32 1
  store %struct.resource* %134, %struct.resource** %14, align 8
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %116

138:                                              ; preds = %116
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %143 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %144 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %145 = call i32 @apb_fake_ranges(%struct.pci_dev* %142, %struct.pci_bus* %143, %struct.pci_pbm_info* %144)
  br label %279

146:                                              ; preds = %138
  %147 = load i32*, i32** %9, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %151 = call i32 @pci_read_bridge_bases(%struct.pci_bus* %150)
  br label %279

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152
  store i32 1, i32* %11, align 4
  br label %154

154:                                              ; preds = %273, %153
  %155 = load i32, i32* %10, align 4
  %156 = icmp sge i32 %155, 32
  br i1 %156, label %157, label %278

157:                                              ; preds = %154
  %158 = load i64, i64* @ofpci_verbose, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %187

160:                                              ; preds = %157
  %161 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 6
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 7
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_info(%struct.pci_dev* %161, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %164, i32 %167, i32 %170, i32 %173, i32 %176, i32 %179, i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %160, %157
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @pci_parse_of_flags(i32 %190)
  store i32 %191, i32* %15, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = call i32 @GET_64BIT(i32* %192, i32 6)
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %16, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196, %187
  br label %273

200:                                              ; preds = %196
  %201 = load i32, i32* %16, align 4
  %202 = ashr i32 %201, 32
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  br label %273

205:                                              ; preds = %200
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* @IORESOURCE_IO, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %205
  %211 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %212 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %211, i32 0, i32 2
  %213 = load %struct.resource**, %struct.resource*** %212, align 8
  %214 = getelementptr inbounds %struct.resource*, %struct.resource** %213, i64 0
  %215 = load %struct.resource*, %struct.resource** %214, align 8
  store %struct.resource* %215, %struct.resource** %14, align 8
  %216 = load %struct.resource*, %struct.resource** %14, align 8
  %217 = getelementptr inbounds %struct.resource, %struct.resource* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %210
  %221 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %222 = load %struct.device_node*, %struct.device_node** %5, align 8
  %223 = call i32 @pci_err(%struct.pci_dev* %221, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), %struct.device_node* %222)
  br label %273

224:                                              ; preds = %210
  br label %246

225:                                              ; preds = %205
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* @PCI_NUM_RESOURCES, align 8
  %229 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %230 = sub i64 %228, %229
  %231 = icmp uge i64 %227, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %234 = load %struct.device_node*, %struct.device_node** %5, align 8
  %235 = call i32 @pci_err(%struct.pci_dev* %233, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), %struct.device_node* %234)
  br label %273

236:                                              ; preds = %225
  %237 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %238 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %237, i32 0, i32 2
  %239 = load %struct.resource**, %struct.resource*** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.resource*, %struct.resource** %239, i64 %241
  %243 = load %struct.resource*, %struct.resource** %242, align 8
  store %struct.resource* %243, %struct.resource** %14, align 8
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %246

246:                                              ; preds = %236, %224
  %247 = load i32, i32* %15, align 4
  %248 = load %struct.resource*, %struct.resource** %14, align 8
  %249 = getelementptr inbounds %struct.resource, %struct.resource* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 4
  %250 = load i32*, i32** %9, align 8
  %251 = call i32 @GET_64BIT(i32* %250, i32 1)
  store i32 %251, i32* %18, align 4
  %252 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 0
  store i32 %251, i32* %252, align 4
  %253 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %254, %255
  %257 = sub nsw i32 %256, 1
  %258 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 1
  store i32 %257, i32* %258, align 4
  %259 = load i64, i64* @ofpci_verbose, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %246
  %262 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %16, align 4
  %266 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_info(%struct.pci_dev* %262, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %261, %246
  %268 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %269 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %268, i32 0, i32 0
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = load %struct.resource*, %struct.resource** %14, align 8
  %272 = call i32 @pcibios_bus_to_resource(%struct.TYPE_3__* %270, %struct.resource* %271, %struct.pci_bus_region* %13)
  br label %273

273:                                              ; preds = %267, %232, %220, %204, %199
  %274 = load i32, i32* %10, align 4
  %275 = sub nsw i32 %274, 32
  store i32 %275, i32* %10, align 4
  %276 = load i32*, i32** %9, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 8
  store i32* %277, i32** %9, align 8
  br label %154

278:                                              ; preds = %154
  br label %279

279:                                              ; preds = %278, %149, %141
  %280 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %281 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %280, i32 0, i32 1
  %282 = load %struct.device_node*, %struct.device_node** %281, align 8
  %283 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %284 = call i32 @pci_domain_nr(%struct.pci_bus* %283)
  %285 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %286 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @sprintf(%struct.device_node* %282, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %284, i32 %287)
  %289 = load i64, i64* @ofpci_verbose, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %279
  %292 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %293 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %294 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %293, i32 0, i32 1
  %295 = load %struct.device_node*, %struct.device_node** %294, align 8
  %296 = ptrtoint %struct.device_node* %295 to i32
  %297 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_info(%struct.pci_dev* %292, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %291, %279
  %299 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %300 = load %struct.device_node*, %struct.device_node** %5, align 8
  %301 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %302 = call i32 @pci_of_scan_bus(%struct.pci_pbm_info* %299, %struct.device_node* %300, %struct.pci_bus* %301)
  br label %303

303:                                              ; preds = %298, %80, %35
  ret void
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, ...) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.pci_bus* @pci_add_new_bus(%struct.TYPE_3__*, %struct.pci_dev*, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, %struct.device_node*) #1

declare dso_local i32 @pci_bus_insert_busn_res(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @apb_fake_ranges(%struct.pci_dev*, %struct.pci_bus*, %struct.pci_pbm_info*) #1

declare dso_local i32 @pci_read_bridge_bases(%struct.pci_bus*) #1

declare dso_local i32 @pci_parse_of_flags(i32) #1

declare dso_local i32 @GET_64BIT(i32*, i32) #1

declare dso_local i32 @pcibios_bus_to_resource(%struct.TYPE_3__*, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i32 @sprintf(%struct.device_node*, i8*, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @pci_of_scan_bus(%struct.pci_pbm_info*, %struct.device_node*, %struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
